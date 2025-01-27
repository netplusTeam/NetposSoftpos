.class public interface abstract Lcom/solab/iso8583/CustomFieldEncoder;
.super Ljava/lang/Object;
.source "CustomFieldEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract encodeField(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
