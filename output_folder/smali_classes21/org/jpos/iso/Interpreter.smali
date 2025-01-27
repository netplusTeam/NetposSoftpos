.class public interface abstract Lorg/jpos/iso/Interpreter;
.super Ljava/lang/Object;
.source "Interpreter.java"


# virtual methods
.method public abstract getPackedLength(I)I
.end method

.method public abstract interpret(Ljava/lang/String;[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public abstract uninterpret([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method
