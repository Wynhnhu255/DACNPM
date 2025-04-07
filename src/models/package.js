'use strict';
module.exports = (sequelize, DataTypes) => {
    const Package = sequelize.define('Package', {
        name: {
            type: DataTypes.STRING,
            allowNull: false
        },
        description: DataTypes.TEXT,
        price: {
            type: DataTypes.DECIMAL(10, 2),
            allowNull: false
        },
        image: DataTypes.STRING,
        status: {
            type: DataTypes.BOOLEAN,
            defaultValue: true
        }
    }, {});
    
    return Package;
};