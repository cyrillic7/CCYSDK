.class public final Lcom/shengpay/smc/sdk/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shengpay/smc/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static AppBaseTheme:I

.field public static AppTheme:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/high16 v0, 0x7f040000

    sput v0, Lcom/shengpay/smc/sdk/R$style;->AppBaseTheme:I

    .line 45
    const v0, 0x7f040001

    sput v0, Lcom/shengpay/smc/sdk/R$style;->AppTheme:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
