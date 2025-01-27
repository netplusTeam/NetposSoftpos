.class public interface abstract Lorg/jline/builtins/Source;
.super Ljava/lang/Object;
.source "Source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/Source$ResourceSource;,
        Lorg/jline/builtins/Source$StdInSource;,
        Lorg/jline/builtins/Source$InputStreamSource;,
        Lorg/jline/builtins/Source$PathSource;,
        Lorg/jline/builtins/Source$URLSource;
    }
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract lines()Ljava/lang/Long;
.end method

.method public abstract read()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
