.class public interface abstract Lorg/jpos/util/DirPoll$Processor;
.super Ljava/lang/Object;
.source "DirPoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/util/DirPoll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Processor"
.end annotation


# virtual methods
.method public abstract process(Ljava/lang/String;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/DirPoll$DirPollException;
        }
    .end annotation
.end method
