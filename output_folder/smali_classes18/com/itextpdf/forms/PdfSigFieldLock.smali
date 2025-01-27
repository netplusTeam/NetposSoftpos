.class public Lcom/itextpdf/forms/PdfSigFieldLock;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfSigFieldLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;,
        Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/forms/PdfSigFieldLock;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3
    .param p1, "dict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 73
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 74
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->SigFieldLock:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 75
    return-void
.end method

.method public static getLockActionValue(Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2
    .param p0, "action"    # Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    .line 107
    sget-object v0, Lcom/itextpdf/forms/PdfSigFieldLock$1;->$SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockAction:[I

    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 115
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->All:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 113
    :pswitch_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Exclude:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 111
    :pswitch_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Include:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 109
    :pswitch_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->All:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLockPermission(Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;)Lcom/itextpdf/kernel/pdf/PdfNumber;
    .locals 2
    .param p0, "permissions"    # Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    .line 120
    sget-object v0, Lcom/itextpdf/forms/PdfSigFieldLock$1;->$SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockPermissions:[I

    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 128
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    return-object v0

    .line 126
    :pswitch_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    return-object v0

    .line 124
    :pswitch_1
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    return-object v0

    .line 122
    :pswitch_2
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public setDocumentPermissions(Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;)Lcom/itextpdf/forms/PdfSigFieldLock;
    .locals 3
    .param p1, "permissions"    # Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    .line 85
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/forms/PdfSigFieldLock;->getLockPermission(Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 86
    return-object p0
.end method

.method public varargs setFieldLock(Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;[Ljava/lang/String;)Lcom/itextpdf/forms/PdfSigFieldLock;
    .locals 5
    .param p1, "action"    # Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;
    .param p2, "fields"    # [Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 98
    .local v0, "fieldsArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 99
    .local v3, "field":Ljava/lang/String;
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 98
    .end local v3    # "field":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Action:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/forms/PdfSigFieldLock;->getLockActionValue(Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 102
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 103
    return-object p0
.end method
