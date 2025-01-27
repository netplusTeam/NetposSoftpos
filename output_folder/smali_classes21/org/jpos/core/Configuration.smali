.class public interface abstract Lorg/jpos/core/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# virtual methods
.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAll(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getBoolean(Ljava/lang/String;)Z
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getBooleans(Ljava/lang/String;)[Z
.end method

.method public abstract getDouble(Ljava/lang/String;)D
.end method

.method public abstract getDouble(Ljava/lang/String;D)D
.end method

.method public abstract getDoubles(Ljava/lang/String;)[D
.end method

.method public abstract getInt(Ljava/lang/String;)I
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getInts(Ljava/lang/String;)[I
.end method

.method public abstract getLong(Ljava/lang/String;)J
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract getLongs(Ljava/lang/String;)[J
.end method

.method public abstract keySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Object;)V
.end method
