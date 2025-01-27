.class public interface abstract Lorg/xmlpull/v1/builder/XmlDocument;
.super Ljava/lang/Object;
.source "XmlDocument.java"

# interfaces
.implements Lorg/xmlpull/v1/builder/XmlContainer;


# virtual methods
.method public abstract addChild(Ljava/lang/Object;)V
.end method

.method public abstract addComment(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlComment;
.end method

.method public abstract addDoctype(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDoctype;
.end method

.method public abstract addDocumentElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
.end method

.method public abstract addDocumentElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
.end method

.method public abstract addNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNotation;
.end method

.method public abstract addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlProcessingInstruction;
.end method

.method public abstract children()Ljava/util/Iterator;
.end method

.method public abstract getBaseUri()Ljava/lang/String;
.end method

.method public abstract getCharacterEncodingScheme()Ljava/lang/String;
.end method

.method public abstract getDocumentElement()Lorg/xmlpull/v1/builder/XmlElement;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract insertChild(ILjava/lang/Object;)V
.end method

.method public abstract isAllDeclarationsProcessed()Z
.end method

.method public abstract isStandalone()Ljava/lang/Boolean;
.end method

.method public abstract newComment(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlComment;
.end method

.method public abstract newDoctype(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDoctype;
.end method

.method public abstract newProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlProcessingInstruction;
.end method

.method public abstract notations()Ljava/util/Iterator;
.end method

.method public abstract remocveAllUnparsedEntities()V
.end method

.method public abstract removeAllChildren()V
.end method

.method public abstract removeAllNotations()V
.end method

.method public abstract setCharacterEncodingScheme(Ljava/lang/String;)V
.end method

.method public abstract setDocumentElement(Lorg/xmlpull/v1/builder/XmlElement;)V
.end method

.method public abstract unparsedEntities()Ljava/util/Iterator;
.end method
