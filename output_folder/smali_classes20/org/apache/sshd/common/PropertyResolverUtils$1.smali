.class final Lorg/apache/sshd/common/PropertyResolverUtils$1;
.super Ljava/lang/Object;
.source "PropertyResolverUtils.java"

# interfaces
.implements Lorg/apache/sshd/common/PropertyResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/PropertyResolverUtils;->toPropertyResolver(Ljava/util/Map;Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/common/PropertyResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$parent:Lorg/apache/sshd/common/PropertyResolver;

.field final synthetic val$props:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/PropertyResolver;Ljava/util/Map;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lorg/apache/sshd/common/PropertyResolverUtils$1;->val$parent:Lorg/apache/sshd/common/PropertyResolver;

    iput-object p2, p0, Lorg/apache/sshd/common/PropertyResolverUtils$1;->val$props:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentPropertyResolver()Lorg/apache/sshd/common/PropertyResolver;
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/apache/sshd/common/PropertyResolverUtils$1;->val$parent:Lorg/apache/sshd/common/PropertyResolver;

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

    .line 558
    iget-object v0, p0, Lorg/apache/sshd/common/PropertyResolverUtils$1;->val$props:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/apache/sshd/common/PropertyResolverUtils$1;->val$props:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
