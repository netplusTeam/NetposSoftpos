.class public Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;
.super Ljava/lang/Object;
.source "XmlAttributeImpl.java"

# interfaces
.implements Lorg/xmlpull/v1/builder/XmlAttribute;


# instance fields
.field private default_:Z

.field private name_:Ljava/lang/String;

.field private namespace_:Lorg/xmlpull/v1/builder/XmlNamespace;

.field private owner_:Lorg/xmlpull/v1/builder/XmlElement;

.field private prefix_:Ljava/lang/String;

.field private type_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/builder/XmlElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Lorg/xmlpull/v1/builder/XmlElement;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "CDATA"

    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->type_:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->owner_:Lorg/xmlpull/v1/builder/XmlElement;

    .line 22
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->name_:Ljava/lang/String;

    .line 23
    if-eqz p3, :cond_0

    .line 24
    iput-object p3, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->value_:Ljava/lang/String;

    .line 25
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attribute value can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lorg/xmlpull/v1/builder/XmlElement;Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lorg/xmlpull/v1/builder/XmlElement;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p3, p4, p5}, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;-><init>(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->type_:Ljava/lang/String;

    .line 37
    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/builder/XmlElement;Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "owner"    # Lorg/xmlpull/v1/builder/XmlElement;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "specified"    # Z

    .line 46
    invoke-direct {p0, p1, p3, p4, p5}, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;-><init>(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    if-eqz p2, :cond_0

    .line 51
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->type_:Ljava/lang/String;

    .line 52
    xor-int/lit8 v0, p6, 0x1

    iput-boolean v0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->default_:Z

    .line 53
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attribute type can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lorg/xmlpull/v1/builder/XmlElement;
    .param p2, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1, p3, p4}, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;-><init>(Lorg/xmlpull/v1/builder/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->namespace_:Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 31
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->namespace_:Lorg/xmlpull/v1/builder/XmlNamespace;

    return-object v0
.end method

.method public getNamespaceName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->namespace_:Lorg/xmlpull/v1/builder/XmlNamespace;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOwner()Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->owner_:Lorg/xmlpull/v1/builder/XmlElement;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public isSpecified()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->default_:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->name_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;->value_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
