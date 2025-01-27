.class public interface abstract Lorg/apache/sshd/common/file/FileSystemFactory;
.super Ljava/lang/Object;
.source "FileSystemFactory.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract createFileSystem(Lorg/apache/sshd/common/session/Session;)Ljava/nio/file/FileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
