.class final Lcom/github/devnied/emvnfccard/model/AbstractData$CustomToStringStyle;
.super Lorg/apache/commons/lang3/builder/ToStringStyle;
.source "AbstractData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/devnied/emvnfccard/model/AbstractData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CustomToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 3

    .line 72
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/devnied/emvnfccard/model/AbstractData$CustomToStringStyle;->setUseShortClassName(Z)V

    .line 74
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/github/devnied/emvnfccard/model/AbstractData$CustomToStringStyle;->setUseIdentityHashCode(Z)V

    .line 75
    const-string v1, "["

    invoke-virtual {p0, v1}, Lcom/github/devnied/emvnfccard/model/AbstractData$CustomToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/devnied/emvnfccard/model/AbstractData$CustomToStringStyle;->setFieldSeparator(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/github/devnied/emvnfccard/model/AbstractData$CustomToStringStyle;->setFieldSeparatorAtStart(Z)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/devnied/emvnfccard/model/AbstractData$CustomToStringStyle;->setContentEnd(Ljava/lang/String;)V

    .line 79
    return-void
.end method
