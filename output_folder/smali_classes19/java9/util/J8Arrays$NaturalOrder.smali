.class final Ljava9/util/J8Arrays$NaturalOrder;
.super Ljava/lang/Object;
.source "J8Arrays.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/J8Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NaturalOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Ljava9/util/J8Arrays$NaturalOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 698
    new-instance v0, Ljava9/util/J8Arrays$NaturalOrder;

    invoke-direct {v0}, Ljava9/util/J8Arrays$NaturalOrder;-><init>()V

    sput-object v0, Ljava9/util/J8Arrays$NaturalOrder;->INSTANCE:Ljava9/util/J8Arrays$NaturalOrder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "first"    # Ljava/lang/Object;
    .param p2, "second"    # Ljava/lang/Object;

    .line 696
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
