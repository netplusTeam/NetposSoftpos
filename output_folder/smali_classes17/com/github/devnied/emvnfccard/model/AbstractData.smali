.class public abstract Lcom/github/devnied/emvnfccard/model/AbstractData;
.super Ljava/lang/Object;
.source "AbstractData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/devnied/emvnfccard/model/AbstractData$CustomToStringStyle;
    }
.end annotation


# static fields
.field private static final CUSTOM_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final UNKNOWN:I = -0x1

.field private static final serialVersionUID:J = -0x656eb353f3c6ce6L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/github/devnied/emvnfccard/model/AbstractData$CustomToStringStyle;

    invoke-direct {v0}, Lcom/github/devnied/emvnfccard/model/AbstractData$CustomToStringStyle;-><init>()V

    sput-object v0, Lcom/github/devnied/emvnfccard/model/AbstractData;->CUSTOM_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/github/devnied/emvnfccard/model/AbstractData;->CUSTOM_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
