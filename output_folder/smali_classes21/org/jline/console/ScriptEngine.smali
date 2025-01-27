.class public interface abstract Lorg/jline/console/ScriptEngine;
.super Ljava/lang/Object;
.source "ScriptEngine.java"


# virtual methods
.method public varargs abstract del([Ljava/lang/String;)V
.end method

.method public deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/jline/console/ScriptEngine;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public execute(Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .param p1, "script"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/jline/console/ScriptEngine;->execute(Ljava/io/File;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract execute(Ljava/io/File;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public varargs abstract execute(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract execute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public find()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/jline/console/ScriptEngine;->find(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public abstract find(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getDeserializationFormats()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEngineName()Ljava/lang/String;
.end method

.method public abstract getExtensions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScriptCompleter()Lorg/jline/reader/Completer;
.end method

.method public abstract getSerializationFormats()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasVariable(Ljava/lang/String;)Z
.end method

.method public abstract persist(Ljava/nio/file/Path;Ljava/lang/Object;)V
.end method

.method public abstract persist(Ljava/nio/file/Path;Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract toJson(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract toMap(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toString(Ljava/lang/Object;)Ljava/lang/String;
.end method
