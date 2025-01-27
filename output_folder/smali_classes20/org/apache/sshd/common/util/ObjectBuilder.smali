.class public interface abstract Lorg/apache/sshd/common/util/ObjectBuilder;
.super Ljava/lang/Object;
.source "ObjectBuilder.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract build()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/apache/sshd/common/util/ObjectBuilder;, "Lorg/apache/sshd/common/util/ObjectBuilder<TT;>;"
    invoke-interface {p0}, Lorg/apache/sshd/common/util/ObjectBuilder;->build()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
