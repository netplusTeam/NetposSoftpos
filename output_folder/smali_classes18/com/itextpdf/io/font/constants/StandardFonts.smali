.class public final Lcom/itextpdf/io/font/constants/StandardFonts;
.super Ljava/lang/Object;
.source "StandardFonts.java"


# static fields
.field private static final BUILTIN_FONTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COURIER:Ljava/lang/String; = "Courier"

.field public static final COURIER_BOLD:Ljava/lang/String; = "Courier-Bold"

.field public static final COURIER_BOLDOBLIQUE:Ljava/lang/String; = "Courier-BoldOblique"

.field public static final COURIER_OBLIQUE:Ljava/lang/String; = "Courier-Oblique"

.field public static final HELVETICA:Ljava/lang/String; = "Helvetica"

.field public static final HELVETICA_BOLD:Ljava/lang/String; = "Helvetica-Bold"

.field public static final HELVETICA_BOLDOBLIQUE:Ljava/lang/String; = "Helvetica-BoldOblique"

.field public static final HELVETICA_OBLIQUE:Ljava/lang/String; = "Helvetica-Oblique"

.field public static final SYMBOL:Ljava/lang/String; = "Symbol"

.field public static final TIMES_BOLD:Ljava/lang/String; = "Times-Bold"

.field public static final TIMES_BOLDITALIC:Ljava/lang/String; = "Times-BoldItalic"

.field public static final TIMES_ITALIC:Ljava/lang/String; = "Times-Italic"

.field public static final TIMES_ROMAN:Ljava/lang/String; = "Times-Roman"

.field public static final ZAPFDINGBATS:Ljava/lang/String; = "ZapfDingbats"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 59
    .local v0, "tempSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "Courier"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v1, "Courier-Bold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v1, "Courier-BoldOblique"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v1, "Courier-Oblique"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v1, "Helvetica"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v1, "Helvetica-Bold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v1, "Helvetica-BoldOblique"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v1, "Helvetica-Oblique"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v1, "Symbol"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v1, "Times-Roman"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v1, "Times-Bold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v1, "Times-BoldItalic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v1, "Times-Italic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v1, "ZapfDingbats"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/io/font/constants/StandardFonts;->BUILTIN_FONTS:Ljava/util/Set;

    .line 74
    .end local v0    # "tempSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static isStandardFont(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/itextpdf/io/font/constants/StandardFonts;->BUILTIN_FONTS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
