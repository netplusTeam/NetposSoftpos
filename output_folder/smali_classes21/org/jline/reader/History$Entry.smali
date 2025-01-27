.class public interface abstract Lorg/jline/reader/History$Entry;
.super Ljava/lang/Object;
.source "History.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/History;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Entry"
.end annotation


# virtual methods
.method public abstract index()I
.end method

.method public abstract line()Ljava/lang/String;
.end method

.method public abstract time()Ljava/time/Instant;
.end method
