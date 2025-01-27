.class public final Lcom/dsofttech/dprefs/exampleTests/SampleFuncForTest;
.super Ljava/lang/Object;
.source "SampleFuncForTest.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSampleFuncForTest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SampleFuncForTest.kt\ncom/dsofttech/dprefs/exampleTests/SampleFuncForTest\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,23:1\n1099#2,3:24\n*S KotlinDebug\n*F\n+ 1 SampleFuncForTest.kt\ncom/dsofttech/dprefs/exampleTests/SampleFuncForTest\n*L\n21#1:24,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dsofttech/dprefs/exampleTests/SampleFuncForTest;",
        "",
        "()V",
        "checkBraces",
        "",
        "str",
        "",
        "fib",
        "",
        "n",
        "",
        "DPrefs_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dsofttech/dprefs/exampleTests/SampleFuncForTest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dsofttech/dprefs/exampleTests/SampleFuncForTest;

    invoke-direct {v0}, Lcom/dsofttech/dprefs/exampleTests/SampleFuncForTest;-><init>()V

    sput-object v0, Lcom/dsofttech/dprefs/exampleTests/SampleFuncForTest;->INSTANCE:Lcom/dsofttech/dprefs/exampleTests/SampleFuncForTest;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkBraces(Ljava/lang/String;)Z
    .locals 11
    .param p1, "str"    # Ljava/lang/String;

    const-string/jumbo v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "$this$count$iv":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 24
    .local v1, "$i$f$count":I
    const/4 v2, 0x0

    .line 25
    .local v2, "count$iv":I
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .local v5, "element$iv":C
    move v7, v5

    .local v7, "it":C
    const/4 v8, 0x0

    .line 21
    .local v8, "$i$a$-count-SampleFuncForTest$checkBraces$1":I
    const/16 v9, 0x28

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    move v6, v3

    .line 25
    .end local v7    # "it":C
    .end local v8    # "$i$a$-count-SampleFuncForTest$checkBraces$1":I
    :goto_1
    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    .end local v5    # "element$iv":C
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 26
    :cond_2
    nop

    .line 21
    .end local v0    # "$this$count$iv":Ljava/lang/CharSequence;
    .end local v1    # "$i$f$count":I
    .end local v2    # "count$iv":I
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    .restart local v0    # "$this$count$iv":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 24
    .restart local v1    # "$i$f$count":I
    const/4 v4, 0x0

    .line 25
    .local v4, "count$iv":I
    move v5, v3

    :goto_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v5, v7, :cond_5

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .local v7, "element$iv":C
    move v8, v7

    .local v8, "it":C
    const/4 v9, 0x0

    .line 21
    .local v9, "$i$a$-count-SampleFuncForTest$checkBraces$2":I
    const/16 v10, 0x29

    if-ne v8, v10, :cond_3

    move v8, v6

    goto :goto_3

    :cond_3
    move v8, v3

    .line 25
    .end local v8    # "it":C
    .end local v9    # "$i$a$-count-SampleFuncForTest$checkBraces$2":I
    :goto_3
    if-eqz v8, :cond_4

    add-int/lit8 v4, v4, 0x1

    .end local v7    # "element$iv":C
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 26
    :cond_5
    nop

    .end local v0    # "$this$count$iv":Ljava/lang/CharSequence;
    .end local v1    # "$i$f$count":I
    .end local v4    # "count$iv":I
    if-ne v2, v4, :cond_6

    move v3, v6

    .line 21
    :cond_6
    return v3
.end method

.method public final fib(I)J
    .locals 2
    .param p1, "n"    # I

    .line 13
    const-wide/16 v0, 0x3

    return-wide v0
.end method
