.class public final enum Lcom/sleepycat/je/Get;
.super Ljava/lang/Enum;
.source "Get.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/Get;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/Get;

.field public static final enum CURRENT:Lcom/sleepycat/je/Get;

.field public static final enum FIRST:Lcom/sleepycat/je/Get;

.field public static final enum LAST:Lcom/sleepycat/je/Get;

.field public static final enum NEXT:Lcom/sleepycat/je/Get;

.field public static final enum NEXT_DUP:Lcom/sleepycat/je/Get;

.field public static final enum NEXT_NO_DUP:Lcom/sleepycat/je/Get;

.field public static final enum PREV:Lcom/sleepycat/je/Get;

.field public static final enum PREV_DUP:Lcom/sleepycat/je/Get;

.field public static final enum PREV_NO_DUP:Lcom/sleepycat/je/Get;

.field public static final enum SEARCH:Lcom/sleepycat/je/Get;

.field public static final enum SEARCH_ANY_GTE:Lcom/sleepycat/je/Get;

.field public static final enum SEARCH_BOTH:Lcom/sleepycat/je/Get;

.field public static final enum SEARCH_BOTH_GTE:Lcom/sleepycat/je/Get;

.field public static final enum SEARCH_GTE:Lcom/sleepycat/je/Get;


# instance fields
.field private final allowNexPrevUninitialized:Z

.field private final getMode:Lcom/sleepycat/je/dbi/GetMode;

.field private final searchMode:Lcom/sleepycat/je/dbi/SearchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 36
    new-instance v0, Lcom/sleepycat/je/Get;

    sget-object v1, Lcom/sleepycat/je/dbi/SearchMode;->SET:Lcom/sleepycat/je/dbi/SearchMode;

    const-string v2, "SEARCH"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/SearchMode;)V

    sput-object v0, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    .line 58
    new-instance v1, Lcom/sleepycat/je/Get;

    sget-object v2, Lcom/sleepycat/je/dbi/SearchMode;->BOTH:Lcom/sleepycat/je/dbi/SearchMode;

    const-string v4, "SEARCH_BOTH"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/SearchMode;)V

    sput-object v1, Lcom/sleepycat/je/Get;->SEARCH_BOTH:Lcom/sleepycat/je/Get;

    .line 73
    new-instance v2, Lcom/sleepycat/je/Get;

    sget-object v4, Lcom/sleepycat/je/dbi/SearchMode;->SET_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    const-string v6, "SEARCH_GTE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/SearchMode;)V

    sput-object v2, Lcom/sleepycat/je/Get;->SEARCH_GTE:Lcom/sleepycat/je/Get;

    .line 92
    new-instance v4, Lcom/sleepycat/je/Get;

    sget-object v6, Lcom/sleepycat/je/dbi/SearchMode;->BOTH_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    const-string v8, "SEARCH_BOTH_GTE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/SearchMode;)V

    sput-object v4, Lcom/sleepycat/je/Get;->SEARCH_BOTH_GTE:Lcom/sleepycat/je/Get;

    .line 115
    new-instance v6, Lcom/sleepycat/je/Get;

    sget-object v8, Lcom/sleepycat/je/dbi/SearchMode;->ANY_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    const-string v10, "SEARCH_ANY_GTE"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/SearchMode;)V

    sput-object v6, Lcom/sleepycat/je/Get;->SEARCH_ANY_GTE:Lcom/sleepycat/je/Get;

    .line 131
    new-instance v8, Lcom/sleepycat/je/Get;

    const-string v10, "CURRENT"

    const/4 v12, 0x5

    invoke-direct {v8, v10, v12}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sleepycat/je/Get;->CURRENT:Lcom/sleepycat/je/Get;

    .line 146
    new-instance v10, Lcom/sleepycat/je/Get;

    const-string v13, "FIRST"

    const/4 v14, 0x6

    invoke-direct {v10, v13, v14}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sleepycat/je/Get;->FIRST:Lcom/sleepycat/je/Get;

    .line 161
    new-instance v13, Lcom/sleepycat/je/Get;

    const-string v15, "LAST"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sleepycat/je/Get;->LAST:Lcom/sleepycat/je/Get;

    .line 184
    new-instance v15, Lcom/sleepycat/je/Get;

    sget-object v14, Lcom/sleepycat/je/dbi/GetMode;->NEXT:Lcom/sleepycat/je/dbi/GetMode;

    const-string v12, "NEXT"

    const/16 v11, 0x8

    invoke-direct {v15, v12, v11, v14, v5}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/GetMode;Z)V

    sput-object v15, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    .line 202
    new-instance v12, Lcom/sleepycat/je/Get;

    sget-object v14, Lcom/sleepycat/je/dbi/GetMode;->NEXT_DUP:Lcom/sleepycat/je/dbi/GetMode;

    const-string v11, "NEXT_DUP"

    const/16 v9, 0x9

    invoke-direct {v12, v11, v9, v14, v3}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/GetMode;Z)V

    sput-object v12, Lcom/sleepycat/je/Get;->NEXT_DUP:Lcom/sleepycat/je/Get;

    .line 222
    new-instance v11, Lcom/sleepycat/je/Get;

    sget-object v14, Lcom/sleepycat/je/dbi/GetMode;->NEXT_NODUP:Lcom/sleepycat/je/dbi/GetMode;

    const-string v9, "NEXT_NO_DUP"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v14, v5}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/GetMode;Z)V

    sput-object v11, Lcom/sleepycat/je/Get;->NEXT_NO_DUP:Lcom/sleepycat/je/Get;

    .line 245
    new-instance v9, Lcom/sleepycat/je/Get;

    sget-object v14, Lcom/sleepycat/je/dbi/GetMode;->PREV:Lcom/sleepycat/je/dbi/GetMode;

    const-string v7, "PREV"

    const/16 v3, 0xb

    invoke-direct {v9, v7, v3, v14, v5}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/GetMode;Z)V

    sput-object v9, Lcom/sleepycat/je/Get;->PREV:Lcom/sleepycat/je/Get;

    .line 263
    new-instance v7, Lcom/sleepycat/je/Get;

    sget-object v14, Lcom/sleepycat/je/dbi/GetMode;->PREV_DUP:Lcom/sleepycat/je/dbi/GetMode;

    const-string v3, "PREV_DUP"

    const/16 v5, 0xc

    move-object/from16 v16, v9

    const/4 v9, 0x0

    invoke-direct {v7, v3, v5, v14, v9}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/GetMode;Z)V

    sput-object v7, Lcom/sleepycat/je/Get;->PREV_DUP:Lcom/sleepycat/je/Get;

    .line 283
    new-instance v3, Lcom/sleepycat/je/Get;

    sget-object v9, Lcom/sleepycat/je/dbi/GetMode;->PREV_NODUP:Lcom/sleepycat/je/dbi/GetMode;

    const-string v14, "PREV_NO_DUP"

    const/16 v5, 0xd

    move-object/from16 v17, v7

    const/4 v7, 0x1

    invoke-direct {v3, v14, v5, v9, v7}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/GetMode;Z)V

    sput-object v3, Lcom/sleepycat/je/Get;->PREV_NO_DUP:Lcom/sleepycat/je/Get;

    .line 22
    const/16 v9, 0xe

    new-array v9, v9, [Lcom/sleepycat/je/Get;

    const/4 v14, 0x0

    aput-object v0, v9, v14

    aput-object v1, v9, v7

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v4, v9, v0

    const/4 v0, 0x4

    aput-object v6, v9, v0

    const/4 v0, 0x5

    aput-object v8, v9, v0

    const/4 v0, 0x6

    aput-object v10, v9, v0

    const/4 v0, 0x7

    aput-object v13, v9, v0

    const/16 v0, 0x8

    aput-object v15, v9, v0

    const/16 v0, 0x9

    aput-object v12, v9, v0

    const/16 v0, 0xa

    aput-object v11, v9, v0

    const/16 v0, 0xb

    aput-object v16, v9, v0

    const/16 v0, 0xc

    aput-object v17, v9, v0

    aput-object v3, v9, v5

    sput-object v9, Lcom/sleepycat/je/Get;->$VALUES:[Lcom/sleepycat/je/Get;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 290
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/SearchMode;Lcom/sleepycat/je/dbi/GetMode;Z)V

    .line 291
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/GetMode;Z)V
    .locals 6
    .param p3, "getMode"    # Lcom/sleepycat/je/dbi/GetMode;
    .param p4, "allowNexPrevUninitialized"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/GetMode;",
            "Z)V"
        }
    .end annotation

    .line 298
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/SearchMode;Lcom/sleepycat/je/dbi/GetMode;Z)V

    .line 299
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/SearchMode;)V
    .locals 6
    .param p3, "searchMode"    # Lcom/sleepycat/je/dbi/SearchMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/SearchMode;",
            ")V"
        }
    .end annotation

    .line 294
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/Get;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/SearchMode;Lcom/sleepycat/je/dbi/GetMode;Z)V

    .line 295
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/SearchMode;Lcom/sleepycat/je/dbi/GetMode;Z)V
    .locals 0
    .param p3, "searchMode"    # Lcom/sleepycat/je/dbi/SearchMode;
    .param p4, "getMode"    # Lcom/sleepycat/je/dbi/GetMode;
    .param p5, "allowNexPrevUninitialized"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/SearchMode;",
            "Lcom/sleepycat/je/dbi/GetMode;",
            "Z)V"
        }
    .end annotation

    .line 303
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 305
    iput-object p3, p0, Lcom/sleepycat/je/Get;->searchMode:Lcom/sleepycat/je/dbi/SearchMode;

    .line 306
    iput-object p4, p0, Lcom/sleepycat/je/Get;->getMode:Lcom/sleepycat/je/dbi/GetMode;

    .line 307
    iput-boolean p5, p0, Lcom/sleepycat/je/Get;->allowNexPrevUninitialized:Z

    .line 308
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/Get;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/sleepycat/je/Get;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/Get;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/Get;
    .locals 1

    .line 22
    sget-object v0, Lcom/sleepycat/je/Get;->$VALUES:[Lcom/sleepycat/je/Get;

    invoke-virtual {v0}, [Lcom/sleepycat/je/Get;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/Get;

    return-object v0
.end method


# virtual methods
.method getAllowNextPrevUninitialized()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/sleepycat/je/Get;->allowNexPrevUninitialized:Z

    return v0
.end method

.method getGetMode()Lcom/sleepycat/je/dbi/GetMode;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/sleepycat/je/Get;->getMode:Lcom/sleepycat/je/dbi/GetMode;

    return-object v0
.end method

.method getSearchMode()Lcom/sleepycat/je/dbi/SearchMode;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/sleepycat/je/Get;->searchMode:Lcom/sleepycat/je/dbi/SearchMode;

    return-object v0
.end method
