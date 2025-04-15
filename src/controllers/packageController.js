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

exports.getPackageDetailById = async (req, res) => {
    try {
        const packageId = req.params.id;
        
        if (!packageId) {
            return res.status(404).render('error', { 
                message: 'Không tìm thấy gói khám' 
            });
        }
        
        const packageData = await db.Package.findByPk(packageId);
        
        if (!packageData) {
            return res.status(404).render('error', { 
                message: 'Không tìm thấy gói khám với ID này' 
            });
        }
        
        return res.render('main/package/detail', {
            package: packageData,
            title: packageData.name + ' - Chi tiết gói khám'
        });
    } catch (error) {
        console.error('Error in getPackageDetailById:', error);
        return res.status(500).render('error', { 
            message: 'Có lỗi xảy ra khi lấy thông tin gói khám' 
        });
    }
};

module.exports = {
    getAllPackages: getAllPackages,
    getPackageDetailById: exports.getPackageDetailById
};