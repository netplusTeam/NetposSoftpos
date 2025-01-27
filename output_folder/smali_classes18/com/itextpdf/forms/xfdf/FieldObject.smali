.class public Lcom/itextpdf/forms/xfdf/FieldObject;
.super Ljava/lang/Object;
.source "FieldObject.java"


# instance fields
.field private containsRichText:Z

.field private name:Ljava/lang/String;

.field private parent:Lcom/itextpdf/forms/xfdf/FieldObject;

.field private richTextValue:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "containsRichText"    # Z

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/FieldObject;->name:Ljava/lang/String;

    .line 97
    iput-boolean p3, p0, Lcom/itextpdf/forms/xfdf/FieldObject;->containsRichText:Z

    .line 98
    if-eqz p3, :cond_0

    .line 99
    iput-object p2, p0, Lcom/itextpdf/forms/xfdf/FieldObject;->richTextValue:Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_0
    iput-object p2, p0, Lcom/itextpdf/forms/xfdf/FieldObject;->value:Ljava/lang/String;

    .line 103
    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/FieldObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/forms/xfdf/FieldObject;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/FieldObject;->parent:Lcom/itextpdf/forms/xfdf/FieldObject;

    return-object v0
.end method

.method public getRichTextValue()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/FieldObject;->richTextValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/FieldObject;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isContainsRichText()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/itextpdf/forms/xfdf/FieldObject;->containsRichText:Z

    return v0
.end method

.method public setContainsRichText(Z)V
    .locals 0
    .param p1, "containsRichText"    # Z

    .line 191
    iput-boolean p1, p0, Lcom/itextpdf/forms/xfdf/FieldObject;->containsRichText:Z

    .line 192
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/FieldObject;->name:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setParent(Lcom/itextpdf/forms/xfdf/FieldObject;)V
    .locals 0
    .param p1, "parent"    # Lcom/itextpdf/forms/xfdf/FieldObject;

    .line 209
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/FieldObject;->parent:Lcom/itextpdf/forms/xfdf/FieldObject;

    .line 210
    return-void
.end method

.method public setRichTextValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "richTextValue"    # Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/FieldObject;->richTextValue:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/FieldObject;->value:Ljava/lang/String;

    .line 149
    return-void
.end method
