.class public interface abstract Lorg/jpos/util/DirPoll$FileProcessor;
.super Ljava/lang/Object;
.source "DirPoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/util/DirPoll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileProcessor"
.end annotation


# virtual methods
.method public abstract process(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/DirPoll$DirPollException;
        }
    .end annotation
.end method
