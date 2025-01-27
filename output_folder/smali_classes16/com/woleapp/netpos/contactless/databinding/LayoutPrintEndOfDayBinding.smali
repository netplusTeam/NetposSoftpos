.class public abstract Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutPrintEndOfDayBinding.java"


# instance fields
.field public final approvedCount:Landroid/widget/TextView;

.field public final approvedIcon:Landroid/widget/ImageView;

.field public final approvedText:Landroid/widget/TextView;

.field public final chipGroup:Lcom/google/android/material/chip/ChipGroup;

.field public final closeButton:Landroid/widget/ImageButton;

.field public final declinedCount:Landroid/widget/TextView;

.field public final declinedIcon:Landroid/widget/ImageView;

.field public final declinedText:Landroid/widget/TextView;

.field public final headerTitle:Landroid/widget/TextView;

.field public final print:Landroid/widget/Button;

.field public final printAll:Lcom/google/android/material/chip/Chip;

.field public final printApproved:Lcom/google/android/material/chip/Chip;

.field public final printDeclined:Lcom/google/android/material/chip/Chip;

.field public final printLabel:Landroid/widget/TextView;

.field public final totalTransactions:Landroid/widget/TextView;

.field public final view:Landroid/widget/Button;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/google/android/material/chip/ChipGroup;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 16
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "approvedCount"    # Landroid/widget/TextView;
    .param p5, "approvedIcon"    # Landroid/widget/ImageView;
    .param p6, "approvedText"    # Landroid/widget/TextView;
    .param p7, "chipGroup"    # Lcom/google/android/material/chip/ChipGroup;
    .param p8, "closeButton"    # Landroid/widget/ImageButton;
    .param p9, "declinedCount"    # Landroid/widget/TextView;
    .param p10, "declinedIcon"    # Landroid/widget/ImageView;
    .param p11, "declinedText"    # Landroid/widget/TextView;
    .param p12, "headerTitle"    # Landroid/widget/TextView;
    .param p13, "print"    # Landroid/widget/Button;
    .param p14, "printAll"    # Lcom/google/android/material/chip/Chip;
    .param p15, "printApproved"    # Lcom/google/android/material/chip/Chip;
    .param p16, "printDeclined"    # Lcom/google/android/material/chip/Chip;
    .param p17, "printLabel"    # Landroid/widget/TextView;
    .param p18, "totalTransactions"    # Landroid/widget/TextView;
    .param p19, "view"    # Landroid/widget/Button;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "approvedCount",
            "approvedIcon",
            "approvedText",
            "chipGroup",
            "closeButton",
            "declinedCount",
            "declinedIcon",
            "declinedText",
            "headerTitle",
            "print",
            "printAll",
            "printApproved",
            "printDeclined",
            "printLabel",
            "totalTransactions",
            "view"
        }
    .end annotation

    .line 75
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 76
    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->approvedCount:Landroid/widget/TextView;

    .line 77
    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->approvedIcon:Landroid/widget/ImageView;

    .line 78
    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->approvedText:Landroid/widget/TextView;

    .line 79
    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->chipGroup:Lcom/google/android/material/chip/ChipGroup;

    .line 80
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->closeButton:Landroid/widget/ImageButton;

    .line 81
    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->declinedCount:Landroid/widget/TextView;

    .line 82
    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->declinedIcon:Landroid/widget/ImageView;

    .line 83
    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->declinedText:Landroid/widget/TextView;

    .line 84
    move-object/from16 v9, p12

    iput-object v9, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->headerTitle:Landroid/widget/TextView;

    .line 85
    move-object/from16 v10, p13

    iput-object v10, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->print:Landroid/widget/Button;

    .line 86
    move-object/from16 v11, p14

    iput-object v11, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->printAll:Lcom/google/android/material/chip/Chip;

    .line 87
    move-object/from16 v12, p15

    iput-object v12, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->printApproved:Lcom/google/android/material/chip/Chip;

    .line 88
    move-object/from16 v13, p16

    iput-object v13, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->printDeclined:Lcom/google/android/material/chip/Chip;

    .line 89
    move-object/from16 v14, p17

    iput-object v14, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->printLabel:Landroid/widget/TextView;

    .line 90
    move-object/from16 v15, p18

    iput-object v15, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->totalTransactions:Landroid/widget/TextView;

    .line 91
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->view:Landroid/widget/Button;

    .line 92
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 134
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    const v0, 0x7f0d0070

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 116
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot"
        }
    .end annotation

    .line 97
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z
    .param p3, "component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    const v0, 0x7f0d0070

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    const v0, 0x7f0d0070

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPrintEndOfDayBinding;

    return-object v0
.end method
