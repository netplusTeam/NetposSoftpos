.class public abstract Ljdbm/helper/FastIterator;
.super Ljava/lang/Object;
.source "FastIterator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljdbm/helper/IterationException;
        }
    .end annotation
.end method
