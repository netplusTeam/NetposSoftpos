.class public Lcom/itextpdf/svg/css/impl/SvgAttributeInheritance;
.super Ljava/lang/Object;
.source "SvgAttributeInheritance.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;


# static fields
.field private static final inheritableProperties:Ljava/util/Set;
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
    .locals 7

    .line 63
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "clip-rule"

    const-string v2, "fill"

    const-string v3, "fill-rule"

    const-string/jumbo v4, "stroke"

    const-string/jumbo v5, "stroke-width"

    const-string/jumbo v6, "text-anchor"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/css/impl/SvgAttributeInheritance;->inheritableProperties:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInheritable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cssProperty"    # Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/itextpdf/svg/css/impl/SvgAttributeInheritance;->inheritableProperties:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
