.class public Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupAttribute;
.super Ljava/lang/Object;
.source "JsoupAttribute.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/node/IAttribute;


# instance fields
.field private attribute:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)V
    .locals 0
    .param p1, "attribute"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupAttribute;->attribute:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 66
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupAttribute;->attribute:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupAttribute;->attribute:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
