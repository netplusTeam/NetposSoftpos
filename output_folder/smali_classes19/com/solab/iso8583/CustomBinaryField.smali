.class public interface abstract Lcom/solab/iso8583/CustomBinaryField;
.super Ljava/lang/Object;
.source "CustomBinaryField.java"

# interfaces
.implements Lcom/solab/iso8583/CustomField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/solab/iso8583/CustomField<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract decodeBinaryField([BII)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TT;"
        }
    .end annotation
.end method

.method public abstract encodeBinaryField(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation
.end method
