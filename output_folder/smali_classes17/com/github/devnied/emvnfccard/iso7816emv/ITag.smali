.class public interface abstract Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
.super Ljava/lang/Object;
.source "ITag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;
    }
.end annotation


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNumTagBytes()I
.end method

.method public abstract getTagBytes()[B
.end method

.method public abstract getTagClass()Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;
.end method

.method public abstract getTagValueType()Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;
.end method

.method public abstract getType()Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;
.end method

.method public abstract isConstructed()Z
.end method
