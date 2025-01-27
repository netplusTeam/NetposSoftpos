.class Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;
.super Ljava/lang/Object;
.source "CharTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/io/CharTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AltEscapes"
.end annotation


# static fields
.field public static final instance:Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;


# instance fields
.field private _altEscapes:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 272
    new-instance v0, Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;->instance:Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/16 v0, 0x80

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;->_altEscapes:[[I

    return-void
.end method


# virtual methods
.method public escapesFor(I)[I
    .locals 3
    .param p1, "quoteChar"    # I

    .line 277
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;->_altEscapes:[[I

    aget-object v0, v0, p1

    .line 278
    .local v0, "esc":[I
    if-nez v0, :cond_1

    .line 279
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->access$000()[I

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 281
    aget v1, v0, p1

    if-nez v1, :cond_0

    .line 282
    const/4 v1, -0x1

    aput v1, v0, p1

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;->_altEscapes:[[I

    aput-object v0, v1, p1

    .line 286
    :cond_1
    return-object v0
.end method
