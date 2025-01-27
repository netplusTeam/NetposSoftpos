.class public abstract Lch/qos/logback/core/sift/AbstractDiscriminator;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "AbstractDiscriminator.java"

# interfaces
.implements Lch/qos/logback/core/sift/Discriminator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/spi/ContextAwareBase;",
        "Lch/qos/logback/core/sift/Discriminator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected started:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    .local p0, "this":Lch/qos/logback/core/sift/AbstractDiscriminator;, "Lch/qos/logback/core/sift/AbstractDiscriminator<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    return-void
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    .line 37
    .local p0, "this":Lch/qos/logback/core/sift/AbstractDiscriminator;, "Lch/qos/logback/core/sift/AbstractDiscriminator<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/sift/AbstractDiscriminator;->started:Z

    return v0
.end method

.method public start()V
    .locals 1

    .line 29
    .local p0, "this":Lch/qos/logback/core/sift/AbstractDiscriminator;, "Lch/qos/logback/core/sift/AbstractDiscriminator<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/sift/AbstractDiscriminator;->started:Z

    .line 30
    return-void
.end method

.method public stop()V
    .locals 1

    .line 33
    .local p0, "this":Lch/qos/logback/core/sift/AbstractDiscriminator;, "Lch/qos/logback/core/sift/AbstractDiscriminator<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/sift/AbstractDiscriminator;->started:Z

    .line 34
    return-void
.end method
