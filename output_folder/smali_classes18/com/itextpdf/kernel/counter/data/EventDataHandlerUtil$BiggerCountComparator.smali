.class public Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$BiggerCountComparator;
.super Ljava/lang/Object;
.source "EventDataHandlerUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BiggerCountComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/itextpdf/kernel/counter/data/EventData<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 175
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$BiggerCountComparator;, "Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$BiggerCountComparator<TT;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/itextpdf/kernel/counter/data/EventData;Lcom/itextpdf/kernel/counter/data/EventData;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)I"
        }
    .end annotation

    .line 178
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$BiggerCountComparator;, "Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$BiggerCountComparator<TT;TV;>;"
    .local p1, "o1":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    .local p2, "o2":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    invoke-virtual {p2}, Lcom/itextpdf/kernel/counter/data/EventData;->getCount()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/counter/data/EventData;->getCount()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 175
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$BiggerCountComparator;, "Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$BiggerCountComparator<TT;TV;>;"
    check-cast p1, Lcom/itextpdf/kernel/counter/data/EventData;

    check-cast p2, Lcom/itextpdf/kernel/counter/data/EventData;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$BiggerCountComparator;->compare(Lcom/itextpdf/kernel/counter/data/EventData;Lcom/itextpdf/kernel/counter/data/EventData;)I

    move-result p1

    return p1
.end method
