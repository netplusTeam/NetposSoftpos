.class public interface abstract Lorg/HdrHistogram/HistogramLogScanner$EventHandler;
.super Ljava/lang/Object;
.source "HistogramLogScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/HistogramLogScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventHandler"
.end annotation


# virtual methods
.method public abstract onBaseTime(D)Z
.end method

.method public abstract onComment(Ljava/lang/String;)Z
.end method

.method public abstract onException(Ljava/lang/Throwable;)Z
.end method

.method public abstract onHistogram(Ljava/lang/String;DDLorg/HdrHistogram/HistogramLogScanner$EncodableHistogramSupplier;)Z
.end method

.method public abstract onStartTime(D)Z
.end method
