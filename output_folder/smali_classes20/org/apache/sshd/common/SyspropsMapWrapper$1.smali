.class final Lorg/apache/sshd/common/SyspropsMapWrapper$1;
.super Ljava/lang/Object;
.source "SyspropsMapWrapper.java"

# interfaces
.implements Lorg/apache/sshd/common/PropertyResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/SyspropsMapWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentPropertyResolver()Lorg/apache/sshd/common/PropertyResolver;
    .locals 1

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 66
    sget-object v0, Lorg/apache/sshd/common/SyspropsMapWrapper;->INSTANCE:Lorg/apache/sshd/common/SyspropsMapWrapper;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "SYSPROPS"

    return-object v0
.end method
