.class public Lorg/apache/commons/codec/language/bm/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/bm/Rule$RPattern;,
        Lorg/apache/commons/codec/language/bm/Rule$PhonemeList;,
        Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;,
        Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    }
.end annotation


# static fields
.field public static final ALL:Ljava/lang/String; = "ALL"

.field public static final ALL_STRINGS_RMATCHER:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

.field private static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field private static final HASH_INCLUDE:Ljava/lang/String; = "#include"

.field private static final RULES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Ljava/util/Map<",
            "Lorg/apache/commons/codec/language/bm/RuleType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;>;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final lContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

.field private final pattern:Ljava/lang/String;

.field private final phoneme:Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

.field private final rContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 195
    new-instance v0, Lorg/apache/commons/codec/language/bm/Rule$1;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/bm/Rule$1;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/bm/Rule;->ALL_STRINGS_RMATCHER:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    .line 208
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/commons/codec/language/bm/NameType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/commons/codec/language/bm/Rule;->RULES:Ljava/util/Map;

    .line 212
    invoke-static {}, Lorg/apache/commons/codec/language/bm/NameType;->values()[Lorg/apache/commons/codec/language/bm/NameType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 213
    .local v4, "s":Lorg/apache/commons/codec/language/bm/NameType;
    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Lorg/apache/commons/codec/language/bm/RuleType;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 216
    .local v5, "rts":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;>;"
    invoke-static {}, Lorg/apache/commons/codec/language/bm/RuleType;->values()[Lorg/apache/commons/codec/language/bm/RuleType;

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    .line 217
    .local v9, "rt":Lorg/apache/commons/codec/language/bm/RuleType;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v10, "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;"
    invoke-static {v4}, Lorg/apache/commons/codec/language/bm/Languages;->getInstance(Lorg/apache/commons/codec/language/bm/NameType;)Lorg/apache/commons/codec/language/bm/Languages;

    move-result-object v11

    .line 220
    .local v11, "ls":Lorg/apache/commons/codec/language/bm/Languages;
    invoke-virtual {v11}, Lorg/apache/commons/codec/language/bm/Languages;->getLanguages()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 221
    .local v13, "l":Ljava/lang/String;
    :try_start_0
    invoke-static {v4, v9, v13}, Lorg/apache/commons/codec/language/bm/Rule;->createScanner(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .local v14, "scanner":Ljava/util/Scanner;
    :try_start_1
    invoke-static {v4, v9, v13}, Lorg/apache/commons/codec/language/bm/Rule;->createResourceName(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v10, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    if-eqz v14, :cond_0

    :try_start_2
    invoke-virtual {v14}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 225
    .end local v14    # "scanner":Ljava/util/Scanner;
    :cond_0
    nop

    .line 226
    .end local v13    # "l":Ljava/lang/String;
    goto :goto_2

    .line 221
    .restart local v13    # "l":Ljava/lang/String;
    .restart local v14    # "scanner":Ljava/util/Scanner;
    :catchall_0
    move-exception v0

    .end local v4    # "s":Lorg/apache/commons/codec/language/bm/NameType;
    .end local v5    # "rts":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;>;"
    .end local v9    # "rt":Lorg/apache/commons/codec/language/bm/RuleType;
    .end local v10    # "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;"
    .end local v11    # "ls":Lorg/apache/commons/codec/language/bm/Languages;
    .end local v13    # "l":Ljava/lang/String;
    .end local v14    # "scanner":Ljava/util/Scanner;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    .restart local v4    # "s":Lorg/apache/commons/codec/language/bm/NameType;
    .restart local v5    # "rts":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;>;"
    .restart local v9    # "rt":Lorg/apache/commons/codec/language/bm/RuleType;
    .restart local v10    # "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;"
    .restart local v11    # "ls":Lorg/apache/commons/codec/language/bm/Languages;
    .restart local v13    # "l":Ljava/lang/String;
    .restart local v14    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v1

    if-eqz v14, :cond_1

    :try_start_4
    invoke-virtual {v14}, Ljava/util/Scanner;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "s":Lorg/apache/commons/codec/language/bm/NameType;
    .end local v5    # "rts":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;>;"
    .end local v9    # "rt":Lorg/apache/commons/codec/language/bm/RuleType;
    .end local v10    # "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;"
    .end local v11    # "ls":Lorg/apache/commons/codec/language/bm/Languages;
    .end local v13    # "l":Ljava/lang/String;
    :cond_1
    :goto_3
    throw v1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v14    # "scanner":Ljava/util/Scanner;
    .restart local v4    # "s":Lorg/apache/commons/codec/language/bm/NameType;
    .restart local v5    # "rts":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;>;"
    .restart local v9    # "rt":Lorg/apache/commons/codec/language/bm/RuleType;
    .restart local v10    # "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;"
    .restart local v11    # "ls":Lorg/apache/commons/codec/language/bm/Languages;
    .restart local v13    # "l":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v9, v13}, Lorg/apache/commons/codec/language/bm/Rule;->createResourceName(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 227
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v13    # "l":Ljava/lang/String;
    :cond_2
    sget-object v12, Lorg/apache/commons/codec/language/bm/RuleType;->RULES:Lorg/apache/commons/codec/language/bm/RuleType;

    invoke-virtual {v9, v12}, Lorg/apache/commons/codec/language/bm/RuleType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 228
    const-string v12, "common"

    invoke-static {v4, v9, v12}, Lorg/apache/commons/codec/language/bm/Rule;->createScanner(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v13

    .line 229
    .local v13, "scanner":Ljava/util/Scanner;
    :try_start_6
    invoke-static {v4, v9, v12}, Lorg/apache/commons/codec/language/bm/Rule;->createResourceName(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v10, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 230
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/util/Scanner;->close()V

    goto :goto_5

    .line 228
    :catchall_3
    move-exception v0

    .end local v4    # "s":Lorg/apache/commons/codec/language/bm/NameType;
    .end local v5    # "rts":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;>;"
    .end local v9    # "rt":Lorg/apache/commons/codec/language/bm/RuleType;
    .end local v10    # "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;"
    .end local v11    # "ls":Lorg/apache/commons/codec/language/bm/Languages;
    .end local v13    # "scanner":Ljava/util/Scanner;
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 230
    .restart local v4    # "s":Lorg/apache/commons/codec/language/bm/NameType;
    .restart local v5    # "rts":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;>;"
    .restart local v9    # "rt":Lorg/apache/commons/codec/language/bm/RuleType;
    .restart local v10    # "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;"
    .restart local v11    # "ls":Lorg/apache/commons/codec/language/bm/Languages;
    .restart local v13    # "scanner":Ljava/util/Scanner;
    :catchall_4
    move-exception v1

    if-eqz v13, :cond_3

    :try_start_8
    invoke-virtual {v13}, Ljava/util/Scanner;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw v1

    .line 233
    .end local v13    # "scanner":Ljava/util/Scanner;
    :cond_4
    :goto_5
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v5, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .end local v9    # "rt":Lorg/apache/commons/codec/language/bm/RuleType;
    .end local v10    # "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;"
    .end local v11    # "ls":Lorg/apache/commons/codec/language/bm/Languages;
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 236
    :cond_5
    sget-object v6, Lorg/apache/commons/codec/language/bm/Rule;->RULES:Ljava/util/Map;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .end local v4    # "s":Lorg/apache/commons/codec/language/bm/NameType;
    .end local v5    # "rts":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;>;"
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 238
    :cond_6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "lContext"    # Ljava/lang/String;
    .param p3, "rContext"    # Ljava/lang/String;
    .param p4, "phoneme"    # Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/language/bm/Rule;->pattern(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->lContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/language/bm/Rule;->pattern(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->rContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    .line 634
    iput-object p4, p0, Lorg/apache/commons/codec/language/bm/Rule;->phoneme:Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    .line 635
    return-void
.end method

.method static synthetic access$100(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 81
    invoke-static {p0, p1}, Lorg/apache/commons/codec/language/bm/Rule;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 81
    invoke-static {p0, p1}, Lorg/apache/commons/codec/language/bm/Rule;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/CharSequence;C)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # C

    .line 81
    invoke-static {p0, p1}, Lorg/apache/commons/codec/language/bm/Rule;->contains(Ljava/lang/CharSequence;C)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/CharSequence;C)Z
    .locals 2
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "input"    # C

    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 242
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 243
    const/4 v1, 0x1

    return v1

    .line 241
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static createResourceName(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;

    .line 250
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 251
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lorg/apache/commons/codec/language/bm/RuleType;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 250
    const-string v1, "org/apache/commons/codec/language/bm/%s_%s_%s.txt"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createScanner(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 4
    .param p0, "lang"    # Ljava/lang/String;

    .line 260
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "org/apache/commons/codec/language/bm/%s.txt"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "resName":Ljava/lang/String;
    new-instance v1, Ljava/util/Scanner;

    invoke-static {v0}, Lorg/apache/commons/codec/Resources;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v1
.end method

.method private static createScanner(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;
    .locals 4
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;

    .line 255
    invoke-static {p0, p1, p2}, Lorg/apache/commons/codec/language/bm/Rule;->createResourceName(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "resName":Ljava/lang/String;
    new-instance v1, Ljava/util/Scanner;

    invoke-static {v0}, Lorg/apache/commons/codec/Resources;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v1
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .line 265
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 266
    return v2

    .line 268
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "j":I
    :goto_0
    if-ltz v3, :cond_2

    .line 269
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    .line 270
    return v2

    .line 268
    :cond_1
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 273
    .end local v0    # "i":I
    .end local v3    # "j":I
    :cond_2
    return v1
.end method

.method public static getInstance(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/RuleType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->from(Ljava/util/Set;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/language/bm/Rule;->getInstance(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/List;
    .locals 4
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "langs"    # Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/RuleType;",
            "Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;"
        }
    .end annotation

    .line 289
    invoke-static {p0, p1, p2}, Lorg/apache/commons/codec/language/bm/Rule;->getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/Map;

    move-result-object v0

    .line 290
    .local v0, "ruleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v1, "allRules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 292
    .local v3, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 293
    .end local v3    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    goto :goto_0

    .line 294
    :cond_0
    return-object v1
.end method

.method public static getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/RuleType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;>;"
        }
    .end annotation

    .line 344
    sget-object v0, Lorg/apache/commons/codec/language/bm/Rule;->RULES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 346
    .local v0, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    if-eqz v0, :cond_0

    .line 351
    return-object v0

    .line 347
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 348
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lorg/apache/commons/codec/language/bm/RuleType;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 347
    const-string v3, "No rules found for %s, %s, %s."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/Map;
    .locals 1
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "langs"    # Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/RuleType;",
            "Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;>;"
        }
    .end annotation

    .line 326
    invoke-virtual {p2}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->isSingleton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->getAny()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/language/bm/Rule;->getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_0
    const-string v0, "any"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/language/bm/Rule;->getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 326
    :goto_0
    return-object v0
.end method

.method private static parsePhoneme(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .locals 6
    .param p0, "ph"    # Ljava/lang/String;

    .line 355
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 356
    .local v0, "open":I
    if-ltz v0, :cond_1

    .line 357
    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "before":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "in":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    const-string v4, "[+]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 364
    .local v3, "langs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    invoke-static {v3}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->from(Ljava/util/Set;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    return-object v4

    .line 358
    .end local v1    # "before":Ljava/lang/String;
    .end local v2    # "in":Ljava/lang/String;
    .end local v3    # "langs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Phoneme expression contains a \'[\' but does not end in \']\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_1
    new-instance v1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    sget-object v2, Lorg/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    return-object v1
.end method

.method private static parsePhonemeExpr(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    .locals 7
    .param p0, "ph"    # Ljava/lang/String;

    .line 370
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 371
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v0, "phs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "body":Ljava/lang/String;
    const-string v2, "[|]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 378
    .local v5, "part":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/commons/codec/language/bm/Rule;->parsePhoneme(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v5    # "part":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 380
    :cond_0
    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    :cond_1
    new-instance v2, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    sget-object v3, Lorg/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    const-string v4, ""

    invoke-direct {v2, v4, v3}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_2
    new-instance v2, Lorg/apache/commons/codec/language/bm/Rule$PhonemeList;

    invoke-direct {v2, v0}, Lorg/apache/commons/codec/language/bm/Rule$PhonemeList;-><init>(Ljava/util/List;)V

    return-object v2

    .line 372
    .end local v0    # "phs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    .end local v1    # "body":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Phoneme starts with \'(\' so must end with \')\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/codec/language/bm/Rule;->parsePhoneme(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    move-result-object v0

    return-object v0
.end method

.method private static parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;
    .locals 22
    .param p0, "scanner"    # Ljava/util/Scanner;
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;>;"
        }
    .end annotation

    .line 390
    move-object/from16 v11, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v12, v0

    .line 391
    .local v12, "lines":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    const/4 v0, 0x0

    .line 393
    .local v0, "currentLine":I
    const/4 v1, 0x0

    move v13, v1

    .line 394
    .local v13, "inMultilineComment":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 395
    add-int/lit8 v14, v0, 0x1

    .line 396
    .end local v0    # "currentLine":I
    .local v14, "currentLine":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v15

    .line 397
    .local v15, "rawLine":Ljava/lang/String;
    move-object v0, v15

    .line 399
    .local v0, "line":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 400
    const-string v1, "*/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    const/4 v1, 0x0

    move v13, v1

    .end local v13    # "inMultilineComment":Z
    .local v1, "inMultilineComment":Z
    goto/16 :goto_3

    .line 400
    .end local v1    # "inMultilineComment":Z
    .restart local v13    # "inMultilineComment":Z
    :cond_0
    move/from16 v17, v13

    goto/16 :goto_2

    .line 404
    :cond_1
    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    const/4 v1, 0x1

    move v13, v1

    .end local v13    # "inMultilineComment":Z
    .restart local v1    # "inMultilineComment":Z
    goto/16 :goto_3

    .line 408
    .end local v1    # "inMultilineComment":Z
    .restart local v13    # "inMultilineComment":Z
    :cond_2
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 409
    .local v10, "cmtI":I
    const/4 v9, 0x0

    if-ltz v10, :cond_3

    .line 410
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 414
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 416
    .end local v0    # "line":Ljava/lang/String;
    .local v8, "line":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 417
    move v0, v14

    goto :goto_0

    .line 420
    :cond_4
    const-string v0, "#include"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v7, "\' in "

    if-eqz v1, :cond_8

    .line 422
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "incl":Ljava/lang/String;
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 427
    invoke-static {v1}, Lorg/apache/commons/codec/language/bm/Rule;->createScanner(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v2

    .line 428
    .local v2, "hashIncludeScanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 430
    .end local v1    # "incl":Ljava/lang/String;
    .end local v2    # "hashIncludeScanner":Ljava/util/Scanner;
    :cond_5
    move/from16 v17, v13

    goto/16 :goto_2

    .line 427
    .restart local v1    # "incl":Ljava/lang/String;
    .restart local v2    # "hashIncludeScanner":Ljava/util/Scanner;
    :catchall_0
    move-exception v0

    move-object v3, v0

    .end local v1    # "incl":Ljava/lang/String;
    .end local v2    # "hashIncludeScanner":Ljava/util/Scanner;
    .end local v8    # "line":Ljava/lang/String;
    .end local v10    # "cmtI":I
    .end local v12    # "lines":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    .end local v13    # "inMultilineComment":Z
    .end local v14    # "currentLine":I
    .end local v15    # "rawLine":Ljava/lang/String;
    .end local p0    # "scanner":Ljava/util/Scanner;
    .end local p1    # "location":Ljava/lang/String;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 429
    .restart local v1    # "incl":Ljava/lang/String;
    .restart local v2    # "hashIncludeScanner":Ljava/util/Scanner;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v10    # "cmtI":I
    .restart local v12    # "lines":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    .restart local v13    # "inMultilineComment":Z
    .restart local v14    # "currentLine":I
    .restart local v15    # "rawLine":Ljava/lang/String;
    .restart local p0    # "scanner":Ljava/util/Scanner;
    .restart local p1    # "location":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v4, v0

    if-eqz v2, :cond_6

    :try_start_2
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v4

    .line 424
    .end local v2    # "hashIncludeScanner":Ljava/util/Scanner;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed import statement \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    .end local v1    # "incl":Ljava/lang/String;
    :cond_8
    const-string v0, "\\s+"

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "parts":[Ljava/lang/String;
    array-length v0, v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_a

    .line 438
    :try_start_3
    aget-object v0, v1, v9

    invoke-static {v0}, Lorg/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "pat":Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v3, v1, v0

    invoke-static {v3}, Lorg/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "lCon":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Lorg/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, "rCon":Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Lorg/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/codec/language/bm/Rule;->parsePhonemeExpr(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    move-result-object v5

    .line 442
    .local v5, "ph":Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    move v6, v14

    .line 443
    .local v6, "cLine":I
    new-instance v16, Lorg/apache/commons/codec/language/bm/Rule$2;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v17, v13

    move-object v13, v1

    .end local v1    # "parts":[Ljava/lang/String;
    .local v13, "parts":[Ljava/lang/String;
    .local v17, "inMultilineComment":Z
    move-object/from16 v1, v16

    move-object/from16 v18, v15

    move-object v15, v7

    .end local v15    # "rawLine":Ljava/lang/String;
    .local v18, "rawLine":Ljava/lang/String;
    move-object/from16 v7, p1

    move-object/from16 v19, v8

    .end local v8    # "line":Ljava/lang/String;
    .local v19, "line":Ljava/lang/String;
    move-object v8, v2

    move-object/from16 v20, v13

    move v13, v9

    .end local v13    # "parts":[Ljava/lang/String;
    .local v20, "parts":[Ljava/lang/String;
    move-object v9, v3

    move/from16 v21, v10

    .end local v10    # "cmtI":I
    .local v21, "cmtI":I
    move-object v10, v4

    :try_start_4
    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/codec/language/bm/Rule$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v16

    .line 460
    .local v1, "r":Lorg/apache/commons/codec/language/bm/Rule;
    iget-object v7, v1, Lorg/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    invoke-virtual {v7, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "patternKey":Ljava/lang/String;
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 462
    .local v7, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    if-nez v7, :cond_9

    .line 463
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v8

    .line 464
    invoke-interface {v12, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_9
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 470
    nop

    .line 474
    .end local v0    # "patternKey":Ljava/lang/String;
    .end local v1    # "r":Lorg/apache/commons/codec/language/bm/Rule;
    .end local v2    # "pat":Ljava/lang/String;
    .end local v3    # "lCon":Ljava/lang/String;
    .end local v4    # "rCon":Ljava/lang/String;
    .end local v5    # "ph":Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    .end local v6    # "cLine":I
    .end local v7    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    .end local v17    # "inMultilineComment":Z
    .end local v18    # "rawLine":Ljava/lang/String;
    .end local v19    # "line":Ljava/lang/String;
    .end local v20    # "parts":[Ljava/lang/String;
    .end local v21    # "cmtI":I
    .local v13, "inMultilineComment":Z
    :goto_2
    move/from16 v13, v17

    :goto_3
    move v0, v14

    goto/16 :goto_0

    .line 467
    .end local v13    # "inMultilineComment":Z
    .restart local v17    # "inMultilineComment":Z
    .restart local v18    # "rawLine":Ljava/lang/String;
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v20    # "parts":[Ljava/lang/String;
    .restart local v21    # "cmtI":I
    :catch_0
    move-exception v0

    goto :goto_4

    .end local v17    # "inMultilineComment":Z
    .end local v18    # "rawLine":Ljava/lang/String;
    .end local v19    # "line":Ljava/lang/String;
    .end local v20    # "parts":[Ljava/lang/String;
    .end local v21    # "cmtI":I
    .local v1, "parts":[Ljava/lang/String;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v10    # "cmtI":I
    .restart local v13    # "inMultilineComment":Z
    .restart local v15    # "rawLine":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v19, v8

    move/from16 v21, v10

    move/from16 v17, v13

    move-object/from16 v18, v15

    move-object v15, v7

    .line 468
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v8    # "line":Ljava/lang/String;
    .end local v10    # "cmtI":I
    .end local v13    # "inMultilineComment":Z
    .end local v15    # "rawLine":Ljava/lang/String;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v17    # "inMultilineComment":Z
    .restart local v18    # "rawLine":Ljava/lang/String;
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v20    # "parts":[Ljava/lang/String;
    .restart local v21    # "cmtI":I
    :goto_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem parsing line \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 434
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v17    # "inMultilineComment":Z
    .end local v18    # "rawLine":Ljava/lang/String;
    .end local v19    # "line":Ljava/lang/String;
    .end local v20    # "parts":[Ljava/lang/String;
    .end local v21    # "cmtI":I
    .restart local v1    # "parts":[Ljava/lang/String;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v10    # "cmtI":I
    .restart local v13    # "inMultilineComment":Z
    .restart local v15    # "rawLine":Ljava/lang/String;
    :cond_a
    move-object/from16 v20, v1

    move-object/from16 v18, v15

    .end local v1    # "parts":[Ljava/lang/String;
    .end local v15    # "rawLine":Ljava/lang/String;
    .restart local v18    # "rawLine":Ljava/lang/String;
    .restart local v20    # "parts":[Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed rule statement split into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v20

    .end local v20    # "parts":[Ljava/lang/String;
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " parts: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v18

    .end local v18    # "rawLine":Ljava/lang/String;
    .local v3, "rawLine":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "rawLine":Ljava/lang/String;
    .end local v8    # "line":Ljava/lang/String;
    .end local v10    # "cmtI":I
    .end local v14    # "currentLine":I
    .local v0, "currentLine":I
    :cond_b
    return-object v12
.end method

.method private static pattern(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$RPattern;
    .locals 11
    .param p0, "regex"    # Ljava/lang/String;

    .line 487
    const-string v0, "^"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 488
    .local v1, "startsWith":Z
    const-string v2, "$"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 489
    .local v2, "endsWith":Z
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v2, :cond_0

    sub-int/2addr v4, v3

    :cond_0
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, "content":Ljava/lang/String;
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 492
    .local v6, "boxes":Z
    if-nez v6, :cond_6

    .line 493
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 495
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 497
    new-instance v0, Lorg/apache/commons/codec/language/bm/Rule$3;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/bm/Rule$3;-><init>()V

    return-object v0

    .line 504
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/language/bm/Rule$4;

    invoke-direct {v0, v4}, Lorg/apache/commons/codec/language/bm/Rule$4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 510
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 512
    sget-object v0, Lorg/apache/commons/codec/language/bm/Rule;->ALL_STRINGS_RMATCHER:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    return-object v0

    .line 513
    :cond_4
    if-eqz v1, :cond_5

    .line 515
    new-instance v0, Lorg/apache/commons/codec/language/bm/Rule$5;

    invoke-direct {v0, v4}, Lorg/apache/commons/codec/language/bm/Rule$5;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 521
    :cond_5
    if-eqz v2, :cond_a

    .line 523
    new-instance v0, Lorg/apache/commons/codec/language/bm/Rule$6;

    invoke-direct {v0, v4}, Lorg/apache/commons/codec/language/bm/Rule$6;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 531
    :cond_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 532
    .local v7, "startsWithBox":Z
    const-string v8, "]"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    .line 534
    .local v8, "endsWithBox":Z
    if-eqz v7, :cond_a

    if-eqz v8, :cond_a

    .line 535
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v4, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 536
    .local v9, "boxContent":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 538
    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 539
    .local v0, "negate":Z
    if-eqz v0, :cond_7

    .line 540
    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 542
    :cond_7
    move-object v3, v9

    .line 543
    .local v3, "bContent":Ljava/lang/String;
    xor-int/lit8 v5, v0, 0x1

    .line 545
    .local v5, "shouldMatch":Z
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 547
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$7;

    invoke-direct {v10, v3, v5}, Lorg/apache/commons/codec/language/bm/Rule$7;-><init>(Ljava/lang/String;Z)V

    return-object v10

    .line 553
    :cond_8
    if-eqz v1, :cond_9

    .line 555
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$8;

    invoke-direct {v10, v3, v5}, Lorg/apache/commons/codec/language/bm/Rule$8;-><init>(Ljava/lang/String;Z)V

    return-object v10

    .line 561
    :cond_9
    if-eqz v2, :cond_a

    .line 563
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$9;

    invoke-direct {v10, v3, v5}, Lorg/apache/commons/codec/language/bm/Rule$9;-><init>(Ljava/lang/String;Z)V

    return-object v10

    .line 575
    .end local v0    # "negate":Z
    .end local v3    # "bContent":Ljava/lang/String;
    .end local v5    # "shouldMatch":Z
    .end local v7    # "startsWithBox":Z
    .end local v8    # "endsWithBox":Z
    .end local v9    # "boxContent":Ljava/lang/String;
    :cond_a
    new-instance v0, Lorg/apache/commons/codec/language/bm/Rule$10;

    invoke-direct {v0, p0}, Lorg/apache/commons/codec/language/bm/Rule$10;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 587
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 588
    return v2

    .line 590
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 591
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_1

    .line 592
    return v2

    .line 590
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 599
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 600
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 603
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 607
    :cond_1
    return-object p0
.end method


# virtual methods
.method public getLContext()Lorg/apache/commons/codec/language/bm/Rule$RPattern;
    .locals 1

    .line 643
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->lContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 652
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneme()Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    .locals 1

    .line 661
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->phoneme:Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    return-object v0
.end method

.method public getRContext()Lorg/apache/commons/codec/language/bm/Rule$RPattern;
    .locals 1

    .line 670
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->rContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    return-object v0
.end method

.method public patternAndContextMatches(Ljava/lang/CharSequence;I)Z
    .locals 5
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I

    .line 685
    if-ltz p2, :cond_3

    .line 689
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 690
    .local v0, "patternLength":I
    add-int v1, p2, v0

    .line 692
    .local v1, "ipl":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 694
    return v3

    .line 699
    :cond_0
    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 700
    return v3

    .line 701
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/Rule;->rContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p1, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/codec/language/bm/Rule$RPattern;->isMatch(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 702
    return v3

    .line 704
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/Rule;->lContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    invoke-interface {p1, v3, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/codec/language/bm/Rule$RPattern;->isMatch(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    .line 686
    .end local v0    # "patternLength":I
    .end local v1    # "ipl":I
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Can not match pattern at negative indexes"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
