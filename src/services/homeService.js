import db from "./../models";
import removeMd from "remove-markdown";
import helper from "../helper/client";
const Sequelize = require('sequelize');
const Op = Sequelize.Op;

require('dotenv').config();

let getSpecializations = () => {
    return new Promise((async (resolve, reject) => {
        try {
            let specializations = await db.Specialization.findAll();
            resolve(specializations);
        } catch (e) {
            reject(e);
        }
    }));
};

let getClinics = () => {
    return new Promise((async (resolve, reject) => {
        try {
            let clinics = await db.Clinic.findAll();
            resolve(clinics);
        } catch (e) {
            reject(e);
        }
    }));
};

let getDoctors = () => {
    return new Promise((async (resolve, reject) => {
        resolve(true)

    }));
};

let getPosts = (LIMIT_POST) => {
    return new Promise(async (resolve, reject) => {
        try {
            console.log('Fetching handbook posts...');
            let posts = await db.Handbook.findAll({  // Sửa db.Handbooks -> db.Handbook
                order: [['createdAt', 'DESC']],
                limit: LIMIT_POST,
                attributes: [
                    'id',
                    'title',
                    'contentHTML',
                    'contentMarkdown',
                    'writerId',
                    'image'
                ]
            });

            console.log('Found posts:', posts.length);

            await Promise.all(posts.map(async (post) => {
                let content = removeMd(post.contentMarkdown);
                post.setDataValue('content', content);
                return post;
            }));

            resolve(posts);
        } catch (e) {
            console.error('Error getting posts:', e);
            reject(e);
        }
    });
};

//


let postSearchHomePage = (keyword) => {
    return new Promise(async (resolve, reject) => {
        try {
            let doctors = await db.User.findAll({
                where: {
                    roleId: 2,
                    name: {
                        [Op.like]: `%${keyword}%`
                    }
                },
                attributes: ['id', 'name']
            });

            let specializations = await db.Specialization.findAll({
                where: {
                    name: {
                        [Op.like]: `%${keyword}%`
                    }
                },
                attributes: ['id', 'name']
            });

            let clinics = await db.Clinic.findAll({
                where: {
                    name: {
                        [Op.like]: `%${keyword}%`
                    }
                },
                attributes: ['id', 'name']
            });

            resolve({
                doctors: doctors,
                specializations: specializations,
                clinics: clinics
            })
        } catch (e) {
            console.log(e);
            reject(e);
        }
    });
};

let getDataPageAllClinics = () => {
    return new Promise(async (resolve, reject) => {
        try {
            let clinics = db.Clinic.findAll({
                attributes: ['id', 'name', "image"]
            });

            resolve(clinics);
        } catch (e) {
            reject(e);
        }
    });
};

let getDataPageAllDoctors = () => {
    return new Promise(async (resolve, reject) => {
        try {
            let doctors = await db.User.findAll({
                where: {
                    roleId: 2
                },
                attributes: ['id', 'name', 'avatar']
            });

            resolve(doctors);
        } catch (e) {
            reject(e);
        }
    });
};

let getDataPageAllSpecializations = () => {
    return new Promise(async (resolve, reject) => {
        try {
            let specializations = await db.Specialization.findAll({
                attributes: ['id', 'name', "image"]
            });
            resolve(specializations);
        } catch (e) {
            reject(e);
        }
    });
};

module.exports = {
    getSpecializations,
    getClinics,
    getDoctors,
    getPosts,
    postSearchHomePage,
    getDataPageAllClinics,
    getDataPageAllDoctors,
    getDataPageAllSpecializations
};