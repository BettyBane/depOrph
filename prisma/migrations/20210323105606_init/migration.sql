-- CreateTable
CREATE TABLE `donor` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `companyName` VARCHAR(191) NOT NULL,
    `nameInitials` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `education` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `enrollmentStatus` ENUM('enrolled', 'unenrolled', 'droppedout') NOT NULL,
    `schoolName` VARCHAR(191),
    `typeOfSchool` ENUM('private', 'public'),
    `year` VARCHAR(191),
    `level` ENUM('preSchool', 'gradeSchool', 'underGraduate', 'postGraduate', 'N/A'),
    `reason` VARCHAR(191),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `father` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `dateOfDeath` DATETIME(3) NOT NULL,
    `causeOfDeath` VARCHAR(191) NOT NULL,
    `dateOfBirth` DATETIME(3) NOT NULL,
    `deathCertificateUrl` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `guardian` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `firstName` VARCHAR(191) NOT NULL,
    `middleName` VARCHAR(191) NOT NULL,
    `lastName` VARCHAR(191) NOT NULL,
    `gender` ENUM('M', 'F') NOT NULL,
    `relationToOrphan` ENUM('mother', 'grandmother', 'grandfather', 'sister', 'brother', 'uncle', 'aunt', 'cousin', 'niece', 'nephew') NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `POBox` VARCHAR(191),
    `dateOfBirth` DATETIME(3) NOT NULL,
    `guardianIDCardUrl` VARCHAR(191) NOT NULL,
    `guardianConfirmationLetterUrl` VARCHAR(191) NOT NULL,
    `phoneNumber` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mother` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `firstName` VARCHAR(191) NOT NULL,
    `middleName` VARCHAR(191) NOT NULL,
    `lastName` VARCHAR(191) NOT NULL,
    `vitalStatus` ENUM('alive', 'passed') NOT NULL,
    `dateOfBirth` DATETIME(3) NOT NULL,
    `dateOfDeath` DATETIME(3),
    `causeOfDeath` VARCHAR(191),
    `phoneNumber` VARCHAR(191) NOT NULL,
    `maritalStatus` ENUM('married', 'widow', 'N/A'),
    `monthlyExpense` DECIMAL(65, 30) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `motherjob` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `currentJobTitle` VARCHAR(191),
    `monthlyIncome` DECIMAL(65, 30),
    `initDate` DATETIME(3),
    `termDate` DATETIME(3),
    `motherId` INTEGER,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `orphan` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `firstName` VARCHAR(191) NOT NULL,
    `fatherName` VARCHAR(191) NOT NULL,
    `grandfatherName` VARCHAR(191) NOT NULL,
    `gender` ENUM('M', 'F') NOT NULL,
    `placeOfBirth` VARCHAR(191) NOT NULL,
    `dateOfBirth` DATETIME(3) NOT NULL,
    `spokenLanguages` VARCHAR(191),
    `gradeAgeMismatchReason` VARCHAR(191),
    `hobbies` VARCHAR(191),
    `religion` ENUM('Christianity', 'Islam', 'Buddhism', 'Hinduism', 'Judaism'),
    `idCardUrl` VARCHAR(191),
    `passportUrl` VARCHAR(191),
    `thankyouLetterUrl` VARCHAR(191),
    `birthCertificateUrl` VARCHAR(191) NOT NULL,
    `psychologicalStatus` ENUM('isolated', 'stressed', 'unsociable', 'overlysociable', 'normal'),
    `accountNumber` VARCHAR(191),
    `currentBalance` DECIMAL(65, 30),
    `motherId` INTEGER,
    `fatherId` INTEGER,
    `guardianId` INTEGER,
    `educationId` INTEGER,
    `donorId` INTEGER,
    `districtId` INTEGER,
    `peasantAssociationId` INTEGER,
    `house_propertyId` INTEGER,
    `supportPlanId` INTEGER,
    `socialWorkerId` INTEGER,
    `healthDescription` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `socialworker` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `fullName` VARCHAR(191) NOT NULL,
    `gender` ENUM('M', 'F'),
    `dateOfBirth` DATETIME(3),
    `phoneNumber` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `initDate` DATETIME(3),
    `termDate` DATETIME(3),
    `peasantAssociationId` INTEGER,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `district` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `districtName` VARCHAR(191) NOT NULL,
    `region` VARCHAR(191) NOT NULL,
    `zone` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `educationalrecord` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `yearDivision` ENUM('semester', 'quarter_term'),
    `quarter` ENUM('first', 'second', 'third', 'fourth'),
    `semester` ENUM('first', 'second'),
    `totalMark` DECIMAL(65, 30),
    `numberOfSubjects` INTEGER,
    `average` DECIMAL(65, 30),
    `rank` INTEGER,
    `reportCardUrl` VARCHAR(191),
    `semesterGPA` DECIMAL(65, 30),
    `cumulativeGPA` DECIMAL(65, 30),
    `educationId` INTEGER,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `financialrecord` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `transactionDate` DATETIME(3),
    `transactionType` ENUM('withdrawal', 'deposit', 'assign', 're_assign'),
    `amount` DECIMAL(65, 30),
    `reason` ENUM('ASFC', 'RSFC', 'AAB', 'AFB', 'NPB', 'EW', 'HW', 'NW', 'SCW'),
    `specialCaseReason` VARCHAR(191),
    `orphanId` INTEGER,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `healthrecord` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `medicalCenterName` VARCHAR(191),
    `dateOfExamination` DATETIME(3),
    `diagnosis` VARCHAR(191),
    `doctorsRecommendation` VARCHAR(191),
    `restRecommended` VARCHAR(191),
    `totalMedicalExpense` DECIMAL(65, 30),
    `medicalCerificateUrl` VARCHAR(191),
    `orphanId` INTEGER,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `house_property` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `housingSituation` VARCHAR(191) NOT NULL,
    `otherProperty` VARCHAR(191),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `orphanphotos` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `photoPortraitUrl` VARCHAR(191) NOT NULL,
    `photoLongUrl` VARCHAR(191),
    `orphanId` INTEGER,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `peasantassociation` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `registrationDate` DATETIME(3) NOT NULL,
    `paName` VARCHAR(191),
    `districtId` INTEGER,
    `donorId` INTEGER,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `sponsorshipstatus` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `status` ENUM('inProgress', 'active', 'suspended', 'graduated'),
    `orphanId` INTEGER,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `date` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `supportplan` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3),
    `totalFund_fc` DECIMAL(65, 30),
    `currency` VARCHAR(191),
    `totalFund_brr` DECIMAL(65, 30),
    `adminFee_brr` DECIMAL(65, 30),
    `netPayment_brr` DECIMAL(65, 30),
    `initDate` DATETIME(3),
    `termDate` DATETIME(3),
    `donorId` INTEGER,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_orphan_sibling` (
    `A` INTEGER NOT NULL,
    `B` INTEGER NOT NULL,
UNIQUE INDEX `_orphan_sibling_AB_unique`(`A`, `B`),
INDEX `_orphan_sibling_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `motherjob` ADD FOREIGN KEY (`motherId`) REFERENCES `mother`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orphan` ADD FOREIGN KEY (`districtId`) REFERENCES `district`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orphan` ADD FOREIGN KEY (`donorId`) REFERENCES `donor`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orphan` ADD FOREIGN KEY (`educationId`) REFERENCES `education`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orphan` ADD FOREIGN KEY (`fatherId`) REFERENCES `father`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orphan` ADD FOREIGN KEY (`guardianId`) REFERENCES `guardian`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orphan` ADD FOREIGN KEY (`house_propertyId`) REFERENCES `house_property`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orphan` ADD FOREIGN KEY (`motherId`) REFERENCES `mother`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orphan` ADD FOREIGN KEY (`peasantAssociationId`) REFERENCES `peasantassociation`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orphan` ADD FOREIGN KEY (`socialWorkerId`) REFERENCES `socialworker`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orphan` ADD FOREIGN KEY (`supportPlanId`) REFERENCES `supportplan`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `socialworker` ADD FOREIGN KEY (`peasantAssociationId`) REFERENCES `peasantassociation`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `educationalrecord` ADD FOREIGN KEY (`educationId`) REFERENCES `education`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `financialrecord` ADD FOREIGN KEY (`orphanId`) REFERENCES `orphan`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `healthrecord` ADD FOREIGN KEY (`orphanId`) REFERENCES `orphan`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orphanphotos` ADD FOREIGN KEY (`orphanId`) REFERENCES `orphan`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `peasantassociation` ADD FOREIGN KEY (`districtId`) REFERENCES `district`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `peasantassociation` ADD FOREIGN KEY (`donorId`) REFERENCES `donor`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `sponsorshipstatus` ADD FOREIGN KEY (`orphanId`) REFERENCES `orphan`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `supportplan` ADD FOREIGN KEY (`donorId`) REFERENCES `donor`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_orphan_sibling` ADD FOREIGN KEY (`A`) REFERENCES `orphan`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_orphan_sibling` ADD FOREIGN KEY (`B`) REFERENCES `orphan`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
