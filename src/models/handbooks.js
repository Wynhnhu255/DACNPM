'use strict';
module.exports = (sequelize, DataTypes) => {
    const Handbook = sequelize.define('Handbook', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        title: DataTypes.STRING,
        contentMarkdown: DataTypes.TEXT,
        contentHTML: DataTypes.TEXT,
        forDoctorId: DataTypes.INTEGER,
        forSpecializationId: DataTypes.INTEGER,
        forClinicId: DataTypes.INTEGER,
        writerId: DataTypes.INTEGER,
        confirmByDoctor: DataTypes.BOOLEAN,
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