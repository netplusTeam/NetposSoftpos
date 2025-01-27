.class public Lcom/itextpdf/forms/xfdf/ActionObject;
.super Ljava/lang/Object;
.source "ActionObject.java"


# instance fields
.field private destination:Lcom/itextpdf/forms/xfdf/DestObject;

.field private fileOriginalName:Ljava/lang/String;

.field private isMap:Z

.field private isNewWindow:Z

.field private nameAction:Lcom/itextpdf/kernel/pdf/PdfName;

.field private type:Lcom/itextpdf/kernel/pdf/PdfName;

.field private uri:Lcom/itextpdf/kernel/pdf/PdfString;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 0
    .param p1, "type"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/ActionObject;->type:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 99
    return-void
.end method


# virtual methods
.method public getDestination()Lcom/itextpdf/forms/xfdf/DestObject;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/ActionObject;->destination:Lcom/itextpdf/forms/xfdf/DestObject;

    return-object v0
.end method

.method public getFileOriginalName()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/ActionObject;->fileOriginalName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameAction()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/ActionObject;->nameAction:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getType()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/ActionObject;->type:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getUri()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/ActionObject;->uri:Lcom/itextpdf/kernel/pdf/PdfString;

    return-object v0
.end method

.method public isMap()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/itextpdf/forms/xfdf/ActionObject;->isMap:Z

    return v0
.end method

.method public isNewWindow()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/itextpdf/forms/xfdf/ActionObject;->isNewWindow:Z

    return v0
.end method

.method public setDestination(Lcom/itextpdf/forms/xfdf/DestObject;)Lcom/itextpdf/forms/xfdf/ActionObject;
    .locals 0
    .param p1, "destination"    # Lcom/itextpdf/forms/xfdf/DestObject;

    .line 250
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/ActionObject;->destination:Lcom/itextpdf/forms/xfdf/DestObject;

    .line 251
    return-object p0
.end method

.method public setFileOriginalName(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/ActionObject;
    .locals 0
    .param p1, "fileOriginalName"    # Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/ActionObject;->fileOriginalName:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public setMap(Z)Lcom/itextpdf/forms/xfdf/ActionObject;
    .locals 0
    .param p1, "map"    # Z

    .line 162
    iput-boolean p1, p0, Lcom/itextpdf/forms/xfdf/ActionObject;->isMap:Z

    .line 163
    return-object p0
.end method

.method public setNameAction(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/forms/xfdf/ActionObject;
    .locals 0
    .param p1, "nameAction"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 182
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/ActionObject;->nameAction:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 183
    return-object p0
.end method

.method public setNewWindow(Z)Lcom/itextpdf/forms/xfdf/ActionObject;
    .locals 0
    .param p1, "newWindow"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/itextpdf/forms/xfdf/ActionObject;->isNewWindow:Z

    .line 227
    return-object p0
.end method

.method public setType(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/forms/xfdf/ActionObject;
    .locals 0
    .param p1, "type"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 120
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/ActionObject;->type:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 121
    return-object p0
.end method

.method public setUri(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/ActionObject;
    .locals 0
    .param p1, "uri"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 142
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/ActionObject;->uri:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 143
    return-object p0
.end method
