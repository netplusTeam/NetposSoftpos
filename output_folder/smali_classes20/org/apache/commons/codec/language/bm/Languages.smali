.class public Lorg/apache/commons/codec/language/bm/Languages;
.super Ljava/lang/Object;
.source "Languages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;,
        Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    }
.end annotation


# static fields
.field public static final ANY:Ljava/lang/String; = "any"

.field public static final ANY_LANGUAGE:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

.field private static final LANGUAGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/Languages;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LANGUAGES:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;


# instance fields
.field private final languages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 162
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/commons/codec/language/bm/NameType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/commons/codec/language/bm/Languages;->LANGUAGES:Ljava/util/Map;

    .line 165
    invoke-static {}, Lorg/apache/commons/codec/language/bm/NameType;->values()[Lorg/apache/commons/codec/language/bm/NameType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 166
    .local v3, "s":Lorg/apache/commons/codec/language/bm/NameType;
    sget-object v4, Lorg/apache/commons/codec/language/bm/Languages;->LANGUAGES:Ljava/util/Map;

    invoke-static {v3}, Lorg/apache/commons/codec/language/bm/Languages;->langResourceName(Lorg/apache/commons/codec/language/bm/NameType;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/codec/language/bm/Languages;->getInstance(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Languages;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v3    # "s":Lorg/apache/commons/codec/language/bm/NameType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/language/bm/Languages$1;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/bm/Languages$1;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/bm/Languages;->NO_LANGUAGES:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .line 247
    new-instance v0, Lorg/apache/commons/codec/language/bm/Languages$2;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/bm/Languages$2;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 284
    .local p1, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Languages;->languages:Ljava/util/Set;

    .line 286
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Languages;
    .locals 5
    .param p0, "languagesResourceName"    # Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 177
    .local v0, "ls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/Scanner;

    invoke-static {p0}, Lorg/apache/commons/codec/Resources;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 179
    .local v1, "lsScanner":Ljava/util/Scanner;
    const/4 v2, 0x0

    .line 180
    .local v2, "inExtendedComment":Z
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 183
    const-string v4, "*/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    const/4 v2, 0x0

    goto :goto_1

    .line 187
    :cond_0
    const-string v4, "/*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    const/4 v2, 0x1

    goto :goto_1

    .line 189
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 190
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v3    # "line":Ljava/lang/String;
    :cond_2
    :goto_1
    goto :goto_0

    .line 194
    :cond_3
    new-instance v3, Lorg/apache/commons/codec/language/bm/Languages;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/codec/language/bm/Languages;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 194
    return-object v3

    .line 177
    .end local v2    # "inExtendedComment":Z
    :catchall_0
    move-exception v2

    .end local v0    # "ls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "lsScanner":Ljava/util/Scanner;
    .end local p0    # "languagesResourceName":Ljava/lang/String;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    .restart local v0    # "ls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "lsScanner":Ljava/util/Scanner;
    .restart local p0    # "languagesResourceName":Ljava/lang/String;
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
.end method

.method public static getInstance(Lorg/apache/commons/codec/language/bm/NameType;)Lorg/apache/commons/codec/language/bm/Languages;
    .locals 1
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;

    .line 171
    sget-object v0, Lorg/apache/commons/codec/language/bm/Languages;->LANGUAGES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/codec/language/bm/Languages;

    return-object v0
.end method

.method private static langResourceName(Lorg/apache/commons/codec/language/bm/NameType;)Ljava/lang/String;
    .locals 3
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;

    .line 199
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "org/apache/commons/codec/language/bm/%s_languages.txt"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Languages;->languages:Ljava/util/Set;

    return-object v0
.end method
