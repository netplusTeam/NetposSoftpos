.class public interface abstract Ljdbm/helper/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract deserialize([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract serialize(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
