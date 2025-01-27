.class public interface abstract Lcom/auth0/android/jwt/Claim;
.super Ljava/lang/Object;
.source "Claim.java"


# virtual methods
.method public abstract asArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/jwt/DecodeException;
        }
    .end annotation
.end method

.method public abstract asBoolean()Ljava/lang/Boolean;
.end method

.method public abstract asDate()Ljava/util/Date;
.end method

.method public abstract asDouble()Ljava/lang/Double;
.end method

.method public abstract asInt()Ljava/lang/Integer;
.end method

.method public abstract asList(Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/jwt/DecodeException;
        }
    .end annotation
.end method

.method public abstract asLong()Ljava/lang/Long;
.end method

.method public abstract asObject(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/jwt/DecodeException;
        }
    .end annotation
.end method

.method public abstract asString()Ljava/lang/String;
.end method
