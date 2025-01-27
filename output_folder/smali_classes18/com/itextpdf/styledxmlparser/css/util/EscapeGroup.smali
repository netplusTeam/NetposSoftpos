.class public Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;
.super Ljava/lang/Object;
.source "EscapeGroup.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final closeCharacter:C

.field private counter:I

.field private final openCharacter:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(C)V
    .locals 1
    .param p1, "escapeChar"    # C

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->counter:I

    .line 59
    iput-char p1, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->openCharacter:C

    .line 60
    iput-char p1, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->closeCharacter:C

    .line 61
    return-void
.end method

.method public constructor <init>(CC)V
    .locals 1
    .param p1, "openCharacter"    # C
    .param p2, "closeCharacter"    # C

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->counter:I

    .line 49
    iput-char p1, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->openCharacter:C

    .line 50
    iput-char p2, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->closeCharacter:C

    .line 51
    return-void
.end method


# virtual methods
.method isEscaped()Z
    .locals 1

    .line 69
    iget v0, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->counter:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method processCharacter(C)V
    .locals 4
    .param p1, "nextCharacter"    # C

    .line 78
    iget-char v0, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->openCharacter:C

    iget-char v1, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->closeCharacter:C

    if-ne v0, v1, :cond_1

    .line 79
    if-ne p1, v0, :cond_3

    .line 80
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->isEscaped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->counter:I

    goto :goto_0

    .line 83
    :cond_0
    iget v0, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->counter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->counter:I

    goto :goto_0

    .line 87
    :cond_1
    if-ne p1, v0, :cond_2

    .line 88
    iget v0, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->counter:I

    goto :goto_0

    .line 89
    :cond_2
    if-ne p1, v1, :cond_3

    .line 90
    iget v0, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->counter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->counter:I

    .line 91
    if-gez v0, :cond_3

    .line 92
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->LOGGER:Lorg/slf4j/Logger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Incorrect character sequence."

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 93
    iput v1, p0, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->counter:I

    .line 97
    :cond_3
    :goto_0
    return-void
.end method
