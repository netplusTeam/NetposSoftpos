.class public Lcom/itextpdf/forms/xfdf/XfdfObject;
.super Ljava/lang/Object;
.source "XfdfObject.java"


# instance fields
.field private annots:Lcom/itextpdf/forms/xfdf/AnnotsObject;

.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/AttributeObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/itextpdf/forms/xfdf/FObject;

.field private fields:Lcom/itextpdf/forms/xfdf/FieldsObject;

.field private ids:Lcom/itextpdf/forms/xfdf/IdsObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnots()Lcom/itextpdf/forms/xfdf/AnnotsObject;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/XfdfObject;->annots:Lcom/itextpdf/forms/xfdf/AnnotsObject;

    return-object v0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/AttributeObject;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/XfdfObject;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getF()Lcom/itextpdf/forms/xfdf/FObject;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/XfdfObject;->f:Lcom/itextpdf/forms/xfdf/FObject;

    return-object v0
.end method

.method public getFields()Lcom/itextpdf/forms/xfdf/FieldsObject;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/XfdfObject;->fields:Lcom/itextpdf/forms/xfdf/FieldsObject;

    return-object v0
.end method

.method public getIds()Lcom/itextpdf/forms/xfdf/IdsObject;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/XfdfObject;->ids:Lcom/itextpdf/forms/xfdf/IdsObject;

    return-object v0
.end method

.method public mergeToPdf(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;)V
    .locals 1
    .param p1, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "pdfDocumentName"    # Ljava/lang/String;

    .line 192
    new-instance v0, Lcom/itextpdf/forms/xfdf/XfdfReader;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/XfdfReader;-><init>()V

    .line 193
    .local v0, "reader":Lcom/itextpdf/forms/xfdf/XfdfReader;
    invoke-virtual {v0, p0, p1, p2}, Lcom/itextpdf/forms/xfdf/XfdfReader;->mergeXfdfIntoPdf(Lcom/itextpdf/forms/xfdf/XfdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public setAnnots(Lcom/itextpdf/forms/xfdf/AnnotsObject;)V
    .locals 0
    .param p1, "annots"    # Lcom/itextpdf/forms/xfdf/AnnotsObject;

    .line 162
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/XfdfObject;->annots:Lcom/itextpdf/forms/xfdf/AnnotsObject;

    .line 163
    return-void
.end method

.method public setAttributes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/AttributeObject;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p1, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/forms/xfdf/AttributeObject;>;"
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/XfdfObject;->attributes:Ljava/util/List;

    .line 181
    return-void
.end method

.method public setF(Lcom/itextpdf/forms/xfdf/FObject;)V
    .locals 0
    .param p1, "f"    # Lcom/itextpdf/forms/xfdf/FObject;

    .line 106
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/XfdfObject;->f:Lcom/itextpdf/forms/xfdf/FObject;

    .line 107
    return-void
.end method

.method public setFields(Lcom/itextpdf/forms/xfdf/FieldsObject;)V
    .locals 0
    .param p1, "fields"    # Lcom/itextpdf/forms/xfdf/FieldsObject;

    .line 144
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/XfdfObject;->fields:Lcom/itextpdf/forms/xfdf/FieldsObject;

    .line 145
    return-void
.end method

.method public setIds(Lcom/itextpdf/forms/xfdf/IdsObject;)V
    .locals 0
    .param p1, "ids"    # Lcom/itextpdf/forms/xfdf/IdsObject;

    .line 126
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/XfdfObject;->ids:Lcom/itextpdf/forms/xfdf/IdsObject;

    .line 127
    return-void
.end method

.method public writeToFile(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 218
    new-instance v0, Lcom/itextpdf/forms/xfdf/XfdfWriter;

    invoke-direct {v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfWriter;-><init>(Ljava/io/OutputStream;)V

    .line 219
    .local v0, "writer":Lcom/itextpdf/forms/xfdf/XfdfWriter;
    invoke-virtual {v0, p0}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->write(Lcom/itextpdf/forms/xfdf/XfdfObject;)V

    .line 220
    return-void
.end method

.method public writeToFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/xfdf/XfdfObject;->writeToFile(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 208
    .end local v0    # "os":Ljava/io/OutputStream;
    return-void

    .line 205
    .restart local v0    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "os":Ljava/io/OutputStream;
    .end local p1    # "filename":Ljava/lang/String;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    .restart local v0    # "os":Ljava/io/OutputStream;
    .restart local p1    # "filename":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method
