.class public final enum Lorg/jpos/transaction/TransactionStatusEvent$State;
.super Ljava/lang/Enum;
.source "TransactionStatusEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/transaction/TransactionStatusEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/transaction/TransactionStatusEvent$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/transaction/TransactionStatusEvent$State;

.field public static final enum ABORTING:Lorg/jpos/transaction/TransactionStatusEvent$State;

.field public static final enum COMMITING:Lorg/jpos/transaction/TransactionStatusEvent$State;

.field public static final enum DONE:Lorg/jpos/transaction/TransactionStatusEvent$State;

.field public static final enum PAUSED:Lorg/jpos/transaction/TransactionStatusEvent$State;

.field public static final enum PREPARING:Lorg/jpos/transaction/TransactionStatusEvent$State;

.field public static final enum PREPARING_FOR_ABORT:Lorg/jpos/transaction/TransactionStatusEvent$State;

.field public static final enum READY:Lorg/jpos/transaction/TransactionStatusEvent$State;


# instance fields
.field state:I

.field stateAsString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 32
    new-instance v0, Lorg/jpos/transaction/TransactionStatusEvent$State;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/jpos/transaction/TransactionStatusEvent$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->READY:Lorg/jpos/transaction/TransactionStatusEvent$State;

    .line 33
    new-instance v1, Lorg/jpos/transaction/TransactionStatusEvent$State;

    const-string v3, "PREPARING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/jpos/transaction/TransactionStatusEvent$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/jpos/transaction/TransactionStatusEvent$State;->PREPARING:Lorg/jpos/transaction/TransactionStatusEvent$State;

    .line 34
    new-instance v3, Lorg/jpos/transaction/TransactionStatusEvent$State;

    const-string v5, "PREPARING_FOR_ABORT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/jpos/transaction/TransactionStatusEvent$State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jpos/transaction/TransactionStatusEvent$State;->PREPARING_FOR_ABORT:Lorg/jpos/transaction/TransactionStatusEvent$State;

    .line 35
    new-instance v5, Lorg/jpos/transaction/TransactionStatusEvent$State;

    const-string v7, "COMMITING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lorg/jpos/transaction/TransactionStatusEvent$State;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/jpos/transaction/TransactionStatusEvent$State;->COMMITING:Lorg/jpos/transaction/TransactionStatusEvent$State;

    .line 36
    new-instance v7, Lorg/jpos/transaction/TransactionStatusEvent$State;

    const-string v9, "ABORTING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lorg/jpos/transaction/TransactionStatusEvent$State;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/jpos/transaction/TransactionStatusEvent$State;->ABORTING:Lorg/jpos/transaction/TransactionStatusEvent$State;

    .line 37
    new-instance v9, Lorg/jpos/transaction/TransactionStatusEvent$State;

    const-string v11, "DONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lorg/jpos/transaction/TransactionStatusEvent$State;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/jpos/transaction/TransactionStatusEvent$State;->DONE:Lorg/jpos/transaction/TransactionStatusEvent$State;

    .line 38
    new-instance v11, Lorg/jpos/transaction/TransactionStatusEvent$State;

    const-string v13, "PAUSED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lorg/jpos/transaction/TransactionStatusEvent$State;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/jpos/transaction/TransactionStatusEvent$State;->PAUSED:Lorg/jpos/transaction/TransactionStatusEvent$State;

    .line 31
    const/4 v13, 0x7

    new-array v13, v13, [Lorg/jpos/transaction/TransactionStatusEvent$State;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lorg/jpos/transaction/TransactionStatusEvent$State;->$VALUES:[Lorg/jpos/transaction/TransactionStatusEvent$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 7
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    const-string v0, "Ready"

    const-string v1, "Preparing"

    const-string v2, "Preparing for abort"

    const-string v3, "Commiting"

    const-string v4, "Aborting"

    const-string v5, "Done"

    const-string v6, "Paused"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jpos/transaction/TransactionStatusEvent$State;->stateAsString:[Ljava/lang/String;

    .line 45
    iput p3, p0, Lorg/jpos/transaction/TransactionStatusEvent$State;->state:I

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/transaction/TransactionStatusEvent$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lorg/jpos/transaction/TransactionStatusEvent$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/transaction/TransactionStatusEvent$State;

    return-object v0
.end method

.method public static values()[Lorg/jpos/transaction/TransactionStatusEvent$State;
    .locals 1

    .line 31
    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->$VALUES:[Lorg/jpos/transaction/TransactionStatusEvent$State;

    invoke-virtual {v0}, [Lorg/jpos/transaction/TransactionStatusEvent$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/transaction/TransactionStatusEvent$State;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/jpos/transaction/TransactionStatusEvent$State;->state:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/jpos/transaction/TransactionStatusEvent$State;->stateAsString:[Ljava/lang/String;

    iget v1, p0, Lorg/jpos/transaction/TransactionStatusEvent$State;->state:I

    aget-object v0, v0, v1

    return-object v0
.end method
