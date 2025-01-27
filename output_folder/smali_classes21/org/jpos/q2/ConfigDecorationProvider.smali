.class public interface abstract Lorg/jpos/q2/ConfigDecorationProvider;
.super Ljava/lang/Object;
.source "ConfigDecorationProvider.java"


# virtual methods
.method public abstract decorateFile(Ljava/io/File;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract initialize(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract uninitialize()V
.end method
