.class public interface abstract Lorg/xmlpull/v1/builder/XmlElement;
.super Ljava/lang/Object;
.source "XmlElement.java"

# interfaces
.implements Lorg/xmlpull/v1/builder/XmlContainer;


# static fields
.field public static final NO_NAMESPACE:Ljava/lang/String; = ""


# virtual methods
.method public abstract addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
.end method

.method public abstract addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;
.end method

.method public abstract addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
.end method

.method public abstract addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;
.end method

.method public abstract addAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)Lorg/xmlpull/v1/builder/XmlAttribute;
.end method

.method public abstract addAttribute(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
.end method

.method public abstract addChild(ILjava/lang/Object;)V
.end method

.method public abstract addChild(Ljava/lang/Object;)V
.end method

.method public abstract addElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
.end method

.method public abstract addElement(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
.end method

.method public abstract addElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
.end method

.method public abstract attributes()Ljava/util/Iterator;
.end method

.method public abstract children()Ljava/util/Iterator;
.end method

.method public abstract declareNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
.end method

.method public abstract declareNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)Lorg/xmlpull/v1/builder/XmlNamespace;
.end method

.method public abstract ensureAttributeCapacity(I)V
.end method

.method public abstract ensureChildrenCapacity(I)V
.end method

.method public abstract ensureNamespaceDeclarationsCapacity(I)V
.end method

.method public abstract findAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
.end method

.method public abstract findElementByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
.end method

.method public abstract findElementByName(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
.end method

.method public abstract findElementByName(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
.end method

.method public abstract findElementByName(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
.end method

.method public abstract getBaseUri()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;
.end method

.method public abstract getNamespaceName()Ljava/lang/String;
.end method

.method public abstract getParent()Lorg/xmlpull/v1/builder/XmlContainer;
.end method

.method public abstract hasAttributes()Z
.end method

.method public abstract hasChild(Ljava/lang/Object;)Z
.end method

.method public abstract hasChildren()Z
.end method

.method public abstract hasNamespaceDeclarations()Z
.end method

.method public abstract insertChild(ILjava/lang/Object;)V
.end method

.method public abstract lookupNamespaceByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
.end method

.method public abstract lookupNamespaceByPrefix(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
.end method

.method public abstract namespaces()Ljava/util/Iterator;
.end method

.method public abstract newElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
.end method

.method public abstract newElement(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
.end method

.method public abstract newElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
.end method

.method public abstract newNamespace(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
.end method

.method public abstract newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
.end method

.method public abstract removeAllAttributes()V
.end method

.method public abstract removeAllChildren()V
.end method

.method public abstract removeAllNamespaceDeclarations()V
.end method

.method public abstract removeAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)V
.end method

.method public abstract removeChild(Ljava/lang/Object;)V
.end method

.method public abstract replaceChild(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract setBaseUri(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)V
.end method

.method public abstract setParent(Lorg/xmlpull/v1/builder/XmlContainer;)V
.end method
