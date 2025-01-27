.class public Lorg/osgi/framework/FrameworkUtil;
.super Ljava/lang/Object;
.source "FrameworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osgi/framework/FrameworkUtil$DNChainMatching;,
        Lorg/osgi/framework/FrameworkUtil$SetAccessibleAction;,
        Lorg/osgi/framework/FrameworkUtil$ServiceReferenceMap;,
        Lorg/osgi/framework/FrameworkUtil$CaseInsensitiveMap;,
        Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static createFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;
    .locals 1
    .param p0, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation

    .line 79
    invoke-static {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->newInstance(Ljava/lang/String;)Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/Class;)Lorg/osgi/framework/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/osgi/framework/Bundle;"
        }
    .end annotation

    .line 208
    .local p0, "classFromBundle":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/osgi/framework/FrameworkUtil$1;

    invoke-direct {v0, p0}, Lorg/osgi/framework/FrameworkUtil$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    .local v0, "cl":Ljava/lang/Object;
    instance-of v1, v0, Lorg/osgi/framework/BundleReference;

    if-eqz v1, :cond_0

    .line 215
    move-object v1, v0

    check-cast v1, Lorg/osgi/framework/BundleReference;

    invoke-interface {v1}, Lorg/osgi/framework/BundleReference;->getBundle()Lorg/osgi/framework/Bundle;

    move-result-object v1

    return-object v1

    .line 217
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static matchDistinguishedNameChain(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p0, "matchPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 192
    .local p1, "dnChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lorg/osgi/framework/FrameworkUtil$DNChainMatching;->match(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method
