const db = require('../models/index');

let getAllPackages = async (req, res) => {
    try {
        let packages = await db.Package.findAll({
            where: { status: true },
            raw: true
        });
        return res.render('main/package/all-packages.ejs', {
            packages: packages
        });
    } catch (e) {
        console.log(e);
        return res.status(500).json({
            message: 'Error from server'
        });
    }
};

let getPackageDetailById = async (req, res) => {
    try {
        let packageId = req.params.id;
        let packageData = await db.Package.findOne({
            where: { 
                id: packageId,
                status: true 
            },
            raw: true
        });

        if (!packageData) {
            return res.status(404).render('main/404.ejs');
        }

        return res.render('main/package/detail.ejs', {
            package: packageData
        });
    } catch (e) {
        console.error(e);
        return res.status(500).render('main/500.ejs');
    }
};

module.exports = {
    getAllPackages: getAllPackages,
    getPackageDetailById: getPackageDetailById
};