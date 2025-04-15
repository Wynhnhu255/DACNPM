'use strict';
module.exports = (sequelize, DataTypes) => {
    const Handbook = sequelize.define('Handbook', {
        id: {
            allowNull: false,
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER
        },
        title: DataTypes.STRING,
        contentMarkdown: DataTypes.TEXT,
        contentHTML: DataTypes.TEXT,
        forDoctorId: DataTypes.INTEGER,
        forSpecializationId: DataTypes.INTEGER,
        forClinicId: DataTypes.INTEGER,
        writerId: DataTypes.INTEGER,
        confirmByDoctor: DataTypes.STRING,
        image: DataTypes.STRING,
        createdAt: DataTypes.DATE,
        updatedAt: DataTypes.DATE,
        deletedAt: DataTypes.DATE
    }, {
        tableName: 'handbooks',
        timestamps: true
    });

    Handbook.associate = function(models) {
        Handbook.belongsTo(models.User, { foreignKey: 'writerId' });
        Handbook.belongsTo(models.User, { foreignKey: 'forDoctorId' });
        Handbook.belongsTo(models.Specialization, { foreignKey: 'forSpecializationId' });
        Handbook.belongsTo(models.Clinic, { foreignKey: 'forClinicId' });
    };

    return Handbook;
};