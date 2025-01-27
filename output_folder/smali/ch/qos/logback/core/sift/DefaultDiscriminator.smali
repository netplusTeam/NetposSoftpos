.class public Lch/qos/logback/core/sift/DefaultDiscriminator;
.super Lch/qos/logback/core/sift/AbstractDiscriminator;
.source "DefaultDiscriminator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/sift/AbstractDiscriminator<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT:Ljava/lang/String; = "default"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    .local p0, "this":Lch/qos/logback/core/sift/DefaultDiscriminator;, "Lch/qos/logback/core/sift/DefaultDiscriminator<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/sift/AbstractDiscriminator;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiscriminatingValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 24
    .local p0, "this":Lch/qos/logback/core/sift/DefaultDiscriminator;, "Lch/qos/logback/core/sift/DefaultDiscriminator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const-string v0, "default"

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 28
    .local p0, "this":Lch/qos/logback/core/sift/DefaultDiscriminator;, "Lch/qos/logback/core/sift/DefaultDiscriminator<TE;>;"
    const-string v0, "default"

    return-object v0
.end method
