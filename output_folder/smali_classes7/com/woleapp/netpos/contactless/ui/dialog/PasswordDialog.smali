.class public Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;
.super Ljava/lang/Object;
.source "PasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;
    }
.end annotation


# static fields
.field public static final OfflineEncryptPin:I = 0x21

.field public static final OfflinePin:I = 0xb

.field public static final OnlineEncryptPin:I = 0x16


# instance fields
.field protected DEFAULT_EXP_PIN_LEN_IND:Ljava/lang/String;

.field protected DEFAULT_TIMEOUT_MS:I

.field private btn0:Landroid/widget/TextView;

.field private btn1:Landroid/widget/TextView;

.field private btn2:Landroid/widget/TextView;

.field private btn3:Landroid/widget/TextView;

.field private btn4:Landroid/widget/TextView;

.field private btn5:Landroid/widget/TextView;

.field private btn6:Landroid/widget/TextView;

.field private btn7:Landroid/widget/TextView;

.field private btn8:Landroid/widget/TextView;

.field private btn9:Landroid/widget/TextView;

.field private btnClear:Landroid/widget/ImageView;

.field private btnConfirm:Landroid/widget/Button;

.field private btnEsc:Landroid/widget/TextView;

.field private dialog:Landroid/app/Dialog;

.field private etPin:Landroid/widget/EditText;

.field private groupKeyboard:Landroidx/constraintlayout/widget/Group;

.field private handler:Landroid/os/Handler;

.field private icSlot:I

.field private isEncryptCard:Z

.field private keyMode:I

.field private message:Ljava/lang/String;

.field private pan:Ljava/lang/String;

.field private pinByPass:Z

.field private pinCard:Ljava/lang/String;

.field private pinExpData:[B

.field private pinIccRandomData:[B

.field private pinListener:Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;

.field private pinModData:[B

.field private pinTryCnt:I

.field private pinType:I

.field private title:Ljava/lang/String;

.field private tpkIndex:I

.field private tvMessage:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;)V
    .locals 17
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "pan"    # Ljava/lang/String;
    .param p3, "pinListener"    # Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "pan",
            "pinListener"
        }
    .end annotation

    .line 73
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v4, "0,4,5,6,7,8,9,10,11,12"

    iput-object v4, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->DEFAULT_EXP_PIN_LEN_IND:Ljava/lang/String;

    .line 42
    const/16 v4, 0x7530

    iput v4, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->DEFAULT_TIMEOUT_MS:I

    .line 75
    iget v4, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->keyMode:I

    iput v4, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->keyMode:I

    .line 77
    iget v4, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->tpkIndex:I

    iput v4, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->tpkIndex:I

    .line 78
    const-string v4, "Enter PIN"

    iput-object v4, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->title:Ljava/lang/String;

    .line 79
    iput-object v3, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->pinListener:Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;

    .line 81
    iput-object v2, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->pan:Ljava/lang/String;

    .line 83
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 84
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0d006c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 85
    .local v5, "view":Landroidx/constraintlayout/widget/ConstraintLayout;
    const v6, 0x7f0a037e

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->tvTitle:Landroid/widget/TextView;

    .line 86
    const v6, 0x7f0a037c

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->tvMessage:Landroid/widget/TextView;

    .line 87
    const v6, 0x7f0a0147

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->etPin:Landroid/widget/EditText;

    .line 88
    const v6, 0x7f0a0099

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btnConfirm:Landroid/widget/Button;

    .line 89
    const v6, 0x7f0a0098

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btnClear:Landroid/widget/ImageView;

    .line 90
    const v6, 0x7f0a009b

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btnEsc:Landroid/widget/TextView;

    .line 91
    const v6, 0x7f0a008d

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn0:Landroid/widget/TextView;

    .line 92
    const v6, 0x7f0a008e

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn1:Landroid/widget/TextView;

    .line 93
    const v6, 0x7f0a008f

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn2:Landroid/widget/TextView;

    .line 94
    const v6, 0x7f0a0090

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn3:Landroid/widget/TextView;

    .line 95
    const v6, 0x7f0a0091

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn4:Landroid/widget/TextView;

    .line 96
    const v6, 0x7f0a0092

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn5:Landroid/widget/TextView;

    .line 97
    const v6, 0x7f0a0093

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn6:Landroid/widget/TextView;

    .line 98
    const v6, 0x7f0a0094

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn7:Landroid/widget/TextView;

    .line 99
    const v6, 0x7f0a0095

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn8:Landroid/widget/TextView;

    .line 100
    const v6, 0x7f0a0096

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn9:Landroid/widget/TextView;

    .line 101
    const v6, 0x7f0a0177

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->groupKeyboard:Landroidx/constraintlayout/widget/Group;

    .line 102
    const-string v7, "1"

    const-string v8, "2"

    const-string v9, "3"

    const-string v10, "4"

    const-string v11, "5"

    const-string v12, "6"

    const-string v13, "7"

    const-string v14, "8"

    const-string v15, "9"

    const-string v16, "0"

    filled-new-array/range {v7 .. v16}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 103
    .local v6, "integerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v6}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 104
    iget-object v7, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn0:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v7, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn1:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v7, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn2:Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v7, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn3:Landroid/widget/TextView;

    const/4 v11, 0x3

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v7, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn4:Landroid/widget/TextView;

    const/4 v12, 0x4

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v7, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn5:Landroid/widget/TextView;

    const/4 v13, 0x5

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v7, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn6:Landroid/widget/TextView;

    const/4 v14, 0x6

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v7, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn7:Landroid/widget/TextView;

    const/4 v15, 0x7

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v7, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn8:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v7, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn9:Landroid/widget/TextView;

    const/16 v15, 0x9

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v7, "builder":Ljava/lang/StringBuilder;
    const/16 v15, 0xa

    new-array v15, v15, [Landroid/widget/TextView;

    iget-object v14, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn0:Landroid/widget/TextView;

    aput-object v14, v15, v8

    iget-object v8, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn1:Landroid/widget/TextView;

    aput-object v8, v15, v9

    iget-object v8, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn2:Landroid/widget/TextView;

    aput-object v8, v15, v10

    iget-object v8, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn3:Landroid/widget/TextView;

    aput-object v8, v15, v11

    iget-object v8, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn4:Landroid/widget/TextView;

    aput-object v8, v15, v12

    iget-object v8, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn5:Landroid/widget/TextView;

    aput-object v8, v15, v13

    iget-object v8, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn6:Landroid/widget/TextView;

    const/4 v10, 0x6

    aput-object v8, v15, v10

    iget-object v8, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn7:Landroid/widget/TextView;

    const/4 v10, 0x7

    aput-object v8, v15, v10

    iget-object v8, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn8:Landroid/widget/TextView;

    const/16 v10, 0x8

    aput-object v8, v15, v10

    iget-object v8, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btn9:Landroid/widget/TextView;

    const/16 v10, 0x9

    aput-object v8, v15, v10

    move-object v8, v15

    .line 116
    .local v8, "buttons":[Landroid/widget/TextView;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v11, v8

    if-ge v10, v11, :cond_0

    .line 117
    aget-object v11, v8, v10

    new-instance v12, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0, v7}, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;Ljava/lang/StringBuilder;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 125
    .end local v10    # "i":I
    :cond_0
    iget-object v10, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btnEsc:Landroid/widget/TextView;

    new-instance v11, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0, v3}, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v10, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btnClear:Landroid/widget/ImageView;

    new-instance v11, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$$ExternalSyntheticLambda2;

    invoke-direct {v11, v0, v7}, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;Ljava/lang/StringBuilder;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v10, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->btnConfirm:Landroid/widget/Button;

    new-instance v11, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$$ExternalSyntheticLambda3;

    invoke-direct {v11, v0, v1, v3, v2}, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;Landroid/app/Activity;Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v10, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->tvTitle:Landroid/widget/TextView;

    iget-object v11, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v10, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->tvMessage:Landroid/widget/TextView;

    iget-object v11, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->message:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    new-instance v10, Landroid/app/Dialog;

    const v11, 0x1030010

    invoke-direct {v10, v1, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v10, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->dialog:Landroid/app/Dialog;

    .line 159
    invoke-virtual {v10, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 160
    iget-object v9, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v9, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 161
    iget-object v9, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 162
    .local v9, "window":Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 164
    .local v10, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v11, 0x11

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 165
    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v11, v11, -0x5

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 166
    invoke-virtual {v9, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 167
    iget-object v11, v0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, -0x1

    invoke-virtual {v11, v12, v12}, Landroid/view/Window;->setLayout(II)V

    .line 168
    const/16 v11, 0x50

    invoke-virtual {v9, v11}, Landroid/view/Window;->setGravity(I)V

    .line 169
    return-void
.end method

.method private static encodePinBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pin"    # Ljava/lang/String;
    .param p1, "pan"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pin",
            "pan"
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FFFFFFFFFF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "pinP":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "0000"

    const/16 v3, 0x10

    if-le v1, v3, :cond_0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    const/16 v3, 0x12

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "cardNum":Ljava/lang/String;
    goto :goto_0

    .line 179
    .end local v1    # "cardNum":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    const/16 v3, 0xf

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .restart local v1    # "cardNum":Ljava/lang/String;
    :goto_0
    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->xorHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "pinblock":Ljava/lang/String;
    sget-object v3, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/util/Singletons;->getKeyHolder()Lcom/danbamitale/epmslib/entities/KeyHolder;

    move-result-object v3

    .line 184
    .local v3, "keyHolder":Lcom/danbamitale/epmslib/entities/KeyHolder;
    invoke-static {v3}, Lcom/danbamitale/epmslib/entities/KeyHolderKt;->getClearPinKey(Lcom/danbamitale/epmslib/entities/KeyHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/danbamitale/epmslib/utils/TripleDES;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private intToBytes(I)[B
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 193
    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 196
    .local v0, "src":[B
    return-object v0
.end method

.method public static shuffleArray([I)V
    .locals 5
    .param p0, "array"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 202
    .local v0, "random":Ljava/util/Random;
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 203
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 204
    .local v2, "index":I
    if-eq v2, v1, :cond_0

    .line 205
    aget v3, p0, v2

    aget v4, p0, v1

    xor-int/2addr v3, v4

    aput v3, p0, v2

    .line 206
    aget v3, p0, v1

    aget v4, p0, v2

    xor-int/2addr v3, v4

    aput v3, p0, v1

    .line 207
    aget v3, p0, v2

    aget v4, p0, v1

    xor-int/2addr v3, v4

    aput v3, p0, v2

    .line 202
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 210
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_1
    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-woleapp-netpos-contactless-ui-dialog-PasswordDialog(Ljava/lang/StringBuilder;Landroid/view/View;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "v"    # Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->etPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->etPin:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method synthetic lambda$new$1$com-woleapp-netpos-contactless-ui-dialog-PasswordDialog(Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;Landroid/view/View;)V
    .locals 1
    .param p1, "pinListener"    # Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;
    .param p2, "v"    # Landroid/view/View;

    .line 126
    const-string v0, "Cancelled"

    invoke-interface {p1, v0}, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;->onError(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 128
    return-void
.end method

.method synthetic lambda$new$2$com-woleapp-netpos-contactless-ui-dialog-PasswordDialog(Ljava/lang/StringBuilder;Landroid/view/View;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "v"    # Landroid/view/View;

    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 132
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->etPin:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    return-void
.end method

.method synthetic lambda$new$3$com-woleapp-netpos-contactless-ui-dialog-PasswordDialog(Landroid/app/Activity;Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "pinListener"    # Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;
    .param p3, "pan"    # Ljava/lang/String;
    .param p4, "v"    # Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->etPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 137
    const v0, 0x7f130179

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->etPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 141
    const v0, 0x7f130178

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 142
    return-void

    .line 145
    :cond_1
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->INSTANCE:Lcom/dsofttech/dprefs/utils/DPrefs;

    sget-object v2, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getPIN_KEY()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->etPin:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/dsofttech/dprefs/utils/DPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getKeyHolder()Lcom/danbamitale/epmslib/entities/KeyHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->etPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->encodePinBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;->onConfirm(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_2
    const-string v0, "Terminal not configured"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 154
    return-void
.end method

.method public showDialog()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 190
    return-void
.end method
