.class public final enum Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/objects/ContactBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CdaMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

.field private static final synthetic b:[Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

.field public static final enum c:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

.field public static final enum d:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

.field public static final enum e:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    const-string v1, "MODE1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;->d:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    const-string v3, "MODE2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;->e:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    const-string v5, "MODE3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;->c:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    new-instance v5, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    const-string v7, "MODE4"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;->a:Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;->b:[Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;->b:[Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/ContactBehavior$CdaMode;

    return-object v0
.end method
