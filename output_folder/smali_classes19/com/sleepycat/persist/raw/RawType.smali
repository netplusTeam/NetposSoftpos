.class public interface abstract Lcom/sleepycat/persist/raw/RawType;
.super Ljava/lang/Object;
.source "RawType.java"


# virtual methods
.method public abstract getClassMetadata()Lcom/sleepycat/persist/model/ClassMetadata;
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public abstract getComponentType()Lcom/sleepycat/persist/raw/RawType;
.end method

.method public abstract getDimensions()I
.end method

.method public abstract getEntityMetadata()Lcom/sleepycat/persist/model/EntityMetadata;
.end method

.method public abstract getEnumConstants()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFields()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/raw/RawField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId()I
.end method

.method public abstract getSuperType()Lcom/sleepycat/persist/raw/RawType;
.end method

.method public abstract getVersion()I
.end method

.method public abstract isArray()Z
.end method

.method public abstract isDeleted()Z
.end method

.method public abstract isEnum()Z
.end method

.method public abstract isPrimitive()Z
.end method

.method public abstract isSimple()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
