/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_unsigned.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tdharmar <tdharmar@student.42bangkok.co    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/06/21 14:59:51 by tdharmar          #+#    #+#             */
/*   Updated: 2025/06/21 14:59:51 by tdharmar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_put_unsigned_nbr(unsigned int n)
{
	if (n >= 10)
		ft_put_unsigned_nbr(n / 10);
	ft_putchar_fd((n % 10) + '0', 1);
}

int	ft_print_unsigned(unsigned int nb)
{
	unsigned long	n;
	int				cnt;

	cnt = 0;
	n = nb;
	if (n == 0)
		cnt = 1;
	while (n != 0)
	{
		n /= 10;
		cnt++;
	}
	ft_put_unsigned_nbr(nb);
	return (cnt);
}
