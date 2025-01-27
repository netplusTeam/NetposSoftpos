.class public interface abstract Lnet/sf/scuba/smartcards/FileSystemStructured;
.super Ljava/lang/Object;
.source "FileSystemStructured.java"


# virtual methods
.method public abstract getSelectedPath()[Lnet/sf/scuba/smartcards/FileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation
.end method

.method public abstract readBinary(II)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation
.end method

.method public abstract selectFile(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation
.end method
