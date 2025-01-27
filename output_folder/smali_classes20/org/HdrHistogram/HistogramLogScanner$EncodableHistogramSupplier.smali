.class public interface abstract Lorg/HdrHistogram/HistogramLogScanner$EncodableHistogramSupplier;
.super Ljava/lang/Object;
.source "HistogramLogScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/HistogramLogScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EncodableHistogramSupplier"
.end annotation


# virtual methods
.method public abstract read()Lorg/HdrHistogram/EncodableHistogram;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation
.end method
