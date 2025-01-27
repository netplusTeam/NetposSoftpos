.class public final Lorg/apache/sshd/common/util/logging/LoggingUtils;
.super Ljava/lang/Object;
.source "LoggingUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static debugClosure(Lorg/slf4j/Logger;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/slf4j/Logger;",
            ")",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 479
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->debugClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public static debugClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;
    .param p1, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/slf4j/Logger;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 490
    const-string v0, "No logger provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 491
    new-instance v0, Lorg/apache/sshd/common/util/logging/LoggingUtils$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/util/logging/LoggingUtils$5;-><init>(Lorg/slf4j/Logger;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static errorClosure(Lorg/slf4j/Logger;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/slf4j/Logger;",
            ")",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 362
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->errorClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public static errorClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;
    .param p1, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/slf4j/Logger;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 373
    const-string v0, "No logger provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 374
    new-instance v0, Lorg/apache/sshd/common/util/logging/LoggingUtils$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/util/logging/LoggingUtils$2;-><init>(Lorg/slf4j/Logger;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static generateMnemonicMap(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "commonPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/apache/sshd/common/util/logging/LoggingUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/apache/sshd/common/util/logging/LoggingUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->generateMnemonicMap(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static generateMnemonicMap(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/NavigableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "acceptor":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/lang/reflect/Field;>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->getMnemonicFields(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object v0

    .line 83
    .local v0, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyNavigableMap()Ljava/util/NavigableMap;

    move-result-object v1

    return-object v1

    .line 87
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 88
    .local v1, "result":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 89
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    .line 92
    .local v5, "value":Ljava/lang/Number;
    invoke-static {v5}, Lorg/apache/sshd/common/util/NumberUtils;->toInteger(Ljava/lang/Number;)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6, v4}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .local v6, "prev":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 95
    goto :goto_0

    .line 100
    .end local v5    # "value":Ljava/lang/Number;
    .end local v6    # "prev":Ljava/lang/String;
    :cond_1
    nop

    .line 101
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_0

    .line 97
    .restart local v3    # "f":Ljava/lang/reflect/Field;
    .restart local v4    # "name":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 99
    .local v5, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 103
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v1
.end method

.method public static getAmbiguousMenmonics(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "commonPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 118
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/apache/sshd/common/util/logging/LoggingUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/apache/sshd/common/util/logging/LoggingUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->getAmbiguousMenmonics(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getAmbiguousMenmonics(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 137
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "acceptor":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/lang/reflect/Field;>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->getMnemonicFields(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object v0

    .line 138
    .local v0, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 142
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 143
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 144
    .local v2, "opcodesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 145
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    .line 148
    .local v6, "value":Ljava/lang/Number;
    invoke-static {v6}, Lorg/apache/sshd/common/util/NumberUtils;->toInteger(Ljava/lang/Number;)Ljava/lang/Integer;

    move-result-object v7

    .line 149
    .local v7, "key":Ljava/lang/Integer;
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 150
    .local v8, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v8, :cond_1

    .line 151
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    .line 152
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_1
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 157
    .local v9, "numOpcodes":I
    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    .line 158
    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 160
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v6    # "value":Ljava/lang/Number;
    .end local v7    # "key":Ljava/lang/Integer;
    .end local v8    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "numOpcodes":I
    :cond_2
    nop

    .line 166
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "name":Ljava/lang/String;
    goto :goto_0

    .line 163
    .restart local v4    # "f":Ljava/lang/reflect/Field;
    .restart local v5    # "name":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 164
    .local v6, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 168
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v1
.end method

.method public static getMnemonicFields(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 181
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "acceptor":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/lang/reflect/Field;>;"
    new-instance v0, Lorg/apache/sshd/common/util/logging/LoggingUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lorg/apache/sshd/common/util/logging/LoggingUtils$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Predicate;)V

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ReflectionUtils;->getMatchingFields(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static infoClosure(Lorg/slf4j/Logger;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/slf4j/Logger;",
            ")",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 440
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->infoClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public static infoClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;
    .param p1, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/slf4j/Logger;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 451
    const-string v0, "No logger provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 452
    new-instance v0, Lorg/apache/sshd/common/util/logging/LoggingUtils$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/util/logging/LoggingUtils$4;-><init>(Lorg/slf4j/Logger;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static isLoggable(Ljava/util/logging/Level;Ljava/util/logging/Level;)Z
    .locals 4
    .param p0, "level"    # Ljava/util/logging/Level;
    .param p1, "threshold"    # Ljava/util/logging/Level;

    .line 228
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 230
    :cond_0
    sget-object v1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v1, p0}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v1, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 232
    :cond_1
    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v1, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 233
    return v2

    .line 235
    :cond_2
    invoke-virtual {p0}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v3

    if-lt v1, v3, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 231
    :cond_4
    :goto_0
    return v0

    .line 229
    :cond_5
    :goto_1
    return v0
.end method

.method public static isLoggable(Lorg/slf4j/Logger;Ljava/util/logging/Level;)Z
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;
    .param p1, "level"    # Ljava/util/logging/Level;

    .line 292
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 294
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-interface {p0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0

    .line 296
    :cond_1
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    invoke-interface {p0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    return v0

    .line 298
    :cond_2
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 300
    :cond_3
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 303
    :cond_4
    invoke-interface {p0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    return v0

    .line 301
    :cond_5
    :goto_0
    invoke-interface {p0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0

    .line 299
    :cond_6
    :goto_1
    invoke-interface {p0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0

    .line 293
    :cond_7
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$generateMnemonicMap$0(Ljava/lang/String;Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p0, "commonPrefix"    # Ljava/lang/String;
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .line 64
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static synthetic lambda$getAmbiguousMenmonics$1(Ljava/lang/String;Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p0, "commonPrefix"    # Ljava/lang/String;
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .line 119
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static synthetic lambda$getMnemonicFields$2(Ljava/util/function/Predicate;Ljava/lang/reflect/Field;)Z
    .locals 4
    .param p0, "acceptor"    # Ljava/util/function/Predicate;
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .line 182
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 183
    .local v0, "mods":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 188
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/NumberUtils;->isNumericClass(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 189
    return v2

    .line 192
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 184
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_0
    return v2
.end method

.method static synthetic lambda$nologClosure$3(Ljava/lang/Object;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Object;

    .line 352
    return-void
.end method

.method public static logMessage(Lorg/slf4j/Logger;Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 262
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 264
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 266
    :cond_1
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 268
    :cond_2
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 270
    :cond_3
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 273
    :cond_4
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 271
    :cond_5
    :goto_0
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 269
    :cond_6
    :goto_1
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    :goto_2
    return-void

    .line 263
    :cond_7
    :goto_3
    return-void
.end method

.method public static loggingClosure(Lorg/slf4j/Logger;Ljava/util/logging/Level;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;
    .param p1, "level"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/slf4j/Logger;",
            "Ljava/util/logging/Level;",
            ")",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 324
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->loggingClosure(Lorg/slf4j/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public static loggingClosure(Lorg/slf4j/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/slf4j/Logger;",
            "Ljava/util/logging/Level;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 328
    const-string v0, "No level provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-static {p0}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->nologClosure(Lorg/slf4j/Logger;)Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0

    .line 332
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    invoke-static {p0, p2}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->errorClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0

    .line 334
    :cond_1
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    invoke-static {p0, p2}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->warnClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0

    .line 336
    :cond_2
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 338
    :cond_3
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 341
    :cond_4
    invoke-static {p0, p2}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->traceClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0

    .line 339
    :cond_5
    :goto_0
    invoke-static {p0, p2}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->debugClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0

    .line 337
    :cond_6
    :goto_1
    invoke-static {p0, p2}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->infoClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public static nologClosure(Lorg/slf4j/Logger;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/slf4j/Logger;",
            ")",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 351
    const-string v0, "No logger provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 352
    new-instance v0, Lorg/apache/sshd/common/util/logging/LoggingUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/logging/LoggingUtils$$ExternalSyntheticLambda3;-><init>()V

    return-object v0
.end method

.method public static traceClosure(Lorg/slf4j/Logger;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/slf4j/Logger;",
            ")",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 518
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->traceClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public static traceClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;
    .param p1, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/slf4j/Logger;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 529
    const-string v0, "No logger provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 530
    new-instance v0, Lorg/apache/sshd/common/util/logging/LoggingUtils$6;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/util/logging/LoggingUtils$6;-><init>(Lorg/slf4j/Logger;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static warnClosure(Lorg/slf4j/Logger;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/slf4j/Logger;",
            ")",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 401
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->warnClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public static warnClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;
    .param p1, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/slf4j/Logger;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 412
    const-string v0, "No logger provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 413
    new-instance v0, Lorg/apache/sshd/common/util/logging/LoggingUtils$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/util/logging/LoggingUtils$3;-><init>(Lorg/slf4j/Logger;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static wrap(Lorg/slf4j/Logger;)Lorg/apache/sshd/common/util/logging/SimplifiedLog;
    .locals 1
    .param p0, "logger"    # Lorg/slf4j/Logger;

    .line 240
    if-nez p0, :cond_0

    .line 241
    sget-object v0, Lorg/apache/sshd/common/util/logging/SimplifiedLog;->EMPTY:Lorg/apache/sshd/common/util/logging/SimplifiedLog;

    return-object v0

    .line 243
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/util/logging/LoggingUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/logging/LoggingUtils$1;-><init>(Lorg/slf4j/Logger;)V

    return-object v0
.end method
