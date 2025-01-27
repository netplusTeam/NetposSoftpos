.class public Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;
.super Ljava/lang/Object;
.source "SignaturePermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/signatures/SignaturePermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FieldLock"
.end annotation


# instance fields
.field action:Lcom/itextpdf/kernel/pdf/PdfName;

.field fields:Lcom/itextpdf/kernel/pdf/PdfArray;

.field final synthetic this$0:Lcom/itextpdf/signatures/SignaturePermissions;


# direct methods
.method public constructor <init>(Lcom/itextpdf/signatures/SignaturePermissions;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/itextpdf/signatures/SignaturePermissions;
    .param p2, "action"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p3, "fields"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 76
    iput-object p1, p0, Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;->this$0:Lcom/itextpdf/signatures/SignaturePermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;->action:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 78
    iput-object p3, p0, Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;->fields:Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 79
    return-void
.end method


# virtual methods
.method public getAction()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;->action:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getFields()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;->fields:Lcom/itextpdf/kernel/pdf/PdfArray;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;->action:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;->fields:Lcom/itextpdf/kernel/pdf/PdfArray;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
