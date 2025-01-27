.class public final Lcom/itextpdf/styledxmlparser/css/media/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"


# static fields
.field public static final ALL:Ljava/lang/String;

.field public static final AURAL:Ljava/lang/String;

.field public static final BRAILLE:Ljava/lang/String;

.field public static final EMBOSSED:Ljava/lang/String;

.field public static final HANDHELD:Ljava/lang/String;

.field public static final PRINT:Ljava/lang/String;

.field public static final PROJECTION:Ljava/lang/String;

.field public static final SCREEN:Ljava/lang/String;

.field public static final SPEECH:Ljava/lang/String;

.field public static final TTY:Ljava/lang/String;

.field public static final TV:Ljava/lang/String;

.field private static final registeredMediaTypes:Ljava/util/Set;
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
    .locals 1

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->registeredMediaTypes:Ljava/util/Set;

    .line 57
    const-string v0, "all"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->registerMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->ALL:Ljava/lang/String;

    .line 60
    const-string v0, "aural"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->registerMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->AURAL:Ljava/lang/String;

    .line 63
    const-string v0, "braille"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->registerMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->BRAILLE:Ljava/lang/String;

    .line 66
    const-string v0, "embossed"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->registerMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->EMBOSSED:Ljava/lang/String;

    .line 69
    const-string v0, "handheld"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->registerMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->HANDHELD:Ljava/lang/String;

    .line 72
    const-string v0, "print"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->registerMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->PRINT:Ljava/lang/String;

    .line 75
    const-string v0, "projection"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->registerMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->PROJECTION:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "screen"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->registerMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->SCREEN:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "speech"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->registerMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->SPEECH:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "tty"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->registerMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->TTY:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "tv"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->registerMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->TV:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static isValidMediaType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mediaType"    # Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->registeredMediaTypes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static registerMediaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mediaType"    # Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->registeredMediaTypes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    return-object p0
.end method
