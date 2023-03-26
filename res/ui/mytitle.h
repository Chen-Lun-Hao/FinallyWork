/********************************************************************************
** Form generated from reading UI file 'Title.ui'
**
** Created by: Qt User Interface Compiler version 5.9.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef MYTITLE_H
#define MYTITLE_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_Form
{
public:
    QVBoxLayout *verticalLayout;
    QWidget *widget;
    QHBoxLayout *horizontalLayout;
    QSpacerItem *horizontalSpacer;
    QLabel *label;
    QSpacerItem *horizontalSpacer_2;
    QLabel *label_2;
    QSpacerItem *horizontalSpacer_4;
    QPushButton *pushButton_4;
    QSpacerItem *horizontalSpacer_3;
    QPushButton *pushButton;
    QPushButton *pushButton_2;
    QPushButton *pushButton_3;
    QWidget *widget_2;

    void setupUi(QWidget *Form)
    {
        if (Form->objectName().isEmpty())
            Form->setObjectName(QStringLiteral("Form"));
        Form->resize(1288, 850);
        Form->setWindowOpacity(1);
        verticalLayout = new QVBoxLayout(Form);
        verticalLayout->setSpacing(0);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        widget = new QWidget(Form);
        widget->setObjectName(QStringLiteral("widget"));
        widget->setMaximumSize(QSize(16777215, 50));
        horizontalLayout = new QHBoxLayout(widget);
        horizontalLayout->setSpacing(0);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setSizeConstraint(QLayout::SetDefaultConstraint);
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        horizontalSpacer = new QSpacerItem(20, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer);

        label = new QLabel(widget);
        label->setObjectName(QStringLiteral("label"));
        label->setEnabled(true);
        label->setMaximumSize(QSize(16777215, 16777215));

        horizontalLayout->addWidget(label);

        horizontalSpacer_2 = new QSpacerItem(122, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer_2);

        label_2 = new QLabel(widget);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setMaximumSize(QSize(16777215, 16777215));

        horizontalLayout->addWidget(label_2);

        horizontalSpacer_4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer_4);

        pushButton_4 = new QPushButton(widget);
        pushButton_4->setObjectName(QStringLiteral("pushButton_4"));

        horizontalLayout->addWidget(pushButton_4);

        horizontalSpacer_3 = new QSpacerItem(122, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer_3);

        pushButton = new QPushButton(widget);
        pushButton->setObjectName(QStringLiteral("pushButton"));
        pushButton->setMaximumSize(QSize(16777215, 16777215));

        horizontalLayout->addWidget(pushButton);

        pushButton_2 = new QPushButton(widget);
        pushButton_2->setObjectName(QStringLiteral("pushButton_2"));
        pushButton_2->setMaximumSize(QSize(16777215, 16777215));

        horizontalLayout->addWidget(pushButton_2);

        pushButton_3 = new QPushButton(widget);
        pushButton_3->setObjectName(QStringLiteral("pushButton_3"));
        pushButton_3->setMaximumSize(QSize(16777215, 16777215));

        horizontalLayout->addWidget(pushButton_3);

        horizontalLayout->setStretch(0, 1);
        horizontalLayout->setStretch(1, 2);
        horizontalLayout->setStretch(2, 1);
        horizontalLayout->setStretch(3, 2);
        horizontalLayout->setStretch(4, 47);
        horizontalLayout->setStretch(5, 5);
        horizontalLayout->setStretch(6, 47);
        horizontalLayout->setStretch(7, 2);
        horizontalLayout->setStretch(8, 2);
        horizontalLayout->setStretch(9, 2);

        verticalLayout->addWidget(widget);

        widget_2 = new QWidget(Form);
        widget_2->setObjectName(QStringLiteral("widget_2"));

        verticalLayout->addWidget(widget_2);


        retranslateUi(Form);

        QMetaObject::connectSlotsByName(Form);
    } // setupUi

    void retranslateUi(QWidget *Form)
    {
        Form->setWindowTitle(QApplication::translate("Form", "Form", Q_NULLPTR));
        label->setText(QApplication::translate("Form", "TextLabel", Q_NULLPTR));
        label_2->setText(QApplication::translate("Form", "Adreams", Q_NULLPTR));
        pushButton_4->setText(QApplication::translate("Form", "\345\233\276\347\211\207\345\276\256\350\260\203", Q_NULLPTR));
        pushButton->setText(QApplication::translate("Form", "PushButton", Q_NULLPTR));
        pushButton_2->setText(QApplication::translate("Form", "PushButton", Q_NULLPTR));
        pushButton_3->setText(QApplication::translate("Form", "PushButton", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class Form: public Ui_Form {};
} // namespace Ui

QT_END_NAMESPACE

#endif // MYTITLE_H
